package cn.mucang.android.jiakaoyi.k3setting.order.item;

import android.content.Context;
import android.view.View;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightAssembleModel;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.LightAssembleItemBinding;
import cn.mucang.android.jiakaoyi.k3setting.order.LightAssembleAddActivity;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.order.b2.v, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B)\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\u0010\nJ\u001e\u0010\u000b\u001a\u00020\t2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/item/LightAssembleItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleItemBinding;", "inPractice", "", "itemAction", "Lkotlin/Function2;", "", "", "(ZLkotlin/jvm/functions/Function2;)V", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LightAssembleItemBinder extends ViewBindingBinder<LightAssembleModel, LightAssembleItemBinding> {
    private final boolean b;
    private final Function2<LightAssembleModel, Integer, v> c;

    public /* synthetic */ LightAssembleItemBinder(boolean z, Function2 function2, int i, o oVar) {
        this((i & 1) != 0 ? false : z, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(LightAssembleItemBinder this$0, LightAssembleModel item, ViewBindingHolder holder, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        r.e(holder, "$holder");
        this$0.c.invoke(item, Integer.valueOf(holder.getAdapterPosition()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(LightAssembleModel item, View view) {
        r.e(item, "$item");
        LightAssembleAddActivity.a aVar = LightAssembleAddActivity.f4367g;
        Context context = view.getContext();
        r.d(context, "it.context");
        aVar.a(context, Long.valueOf(item.getId()), item.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(LightAssembleItemBinder this$0, LightAssembleModel item, ViewBindingHolder holder, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        r.e(holder, "$holder");
        this$0.c.invoke(item, Integer.valueOf(holder.getAdapterPosition()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(View view) {
        u.h("长按图标拖动排序");
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<LightAssembleItemBinding> holder, final LightAssembleModel item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((LightAssembleItemBinding) holder.getViewBinding()).titleTv.setText(item.getName());
        ((LightAssembleItemBinding) holder.getViewBinding()).deleteTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.b2.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LightAssembleItemBinder.s(this.f4405a, item, holder, view);
            }
        });
        ((LightAssembleItemBinding) holder.getViewBinding()).editTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.b2.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LightAssembleItemBinder.t(item, view);
            }
        });
        if (item.getIsPlaying()) {
            ((LightAssembleItemBinding) holder.getViewBinding()).iconIv.setImageResource(R.drawable.ic_light_playing);
        } else {
            ((LightAssembleItemBinding) holder.getViewBinding()).iconIv.setImageResource(R.drawable.ic_light_assemble);
        }
        if (this.b) {
            ((LightAssembleItemBinding) holder.getViewBinding()).deleteTv.setVisibility(8);
            ((LightAssembleItemBinding) holder.getViewBinding()).editTv.setVisibility(8);
            ((LightAssembleItemBinding) holder.getViewBinding()).sortTv.setVisibility(8);
            ((LightAssembleItemBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.b2.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LightAssembleItemBinder.u(this.f4407a, item, holder, view);
                }
            });
        } else {
            ((LightAssembleItemBinding) holder.getViewBinding()).deleteTv.setVisibility(0);
            ((LightAssembleItemBinding) holder.getViewBinding()).editTv.setVisibility(0);
            ((LightAssembleItemBinding) holder.getViewBinding()).sortTv.setVisibility(0);
            ((LightAssembleItemBinding) holder.getViewBinding()).getRoot().setOnClickListener(null);
        }
        ((LightAssembleItemBinding) holder.getViewBinding()).sortTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.b2.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LightAssembleItemBinder.v(view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LightAssembleItemBinder(boolean z, Function2<? super LightAssembleModel, ? super Integer, v> itemAction) {
        r.e(itemAction, "itemAction");
        this.b = z;
        this.c = itemAction;
    }
}
