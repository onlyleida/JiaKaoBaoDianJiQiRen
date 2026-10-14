package cn.mucang.android.jiakaoyi.k3setting.order.item;

import android.content.Context;
import android.view.View;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.LightOrderItemBinding;
import cn.mucang.android.jiakaoyi.k3setting.order.OrderEditActivity;
import cn.mucang.jiakaoyi.uilib.utils.VoiceTextUtil;
import com.tencent.tauth.AuthActivity;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.order.b2.w, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B'\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0016\b\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\u0002\u0010\tJ\u001e\u0010\u000b\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J\u001c\u0010\u000f\u001a\u00020\b2\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007R\u001c\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/item/LightOrderItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;", "mode", "", "clickAction", "Lkotlin/Function1;", "", "(ILkotlin/jvm/functions/Function1;)V", "delAction", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "setDeleteAction", AuthActivity.ACTION_KEY, "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LightOrderItemBinder extends ViewBindingBinder<LightExamModel, LightOrderItemBinding> {
    private final int b;
    private final Function1<LightExamModel, v> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Function1<? super LightExamModel, v> f4413d;

    public /* synthetic */ LightOrderItemBinder(int i, Function1 function1, int i2, o oVar) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? null : function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(LightExamModel item, View view) {
        r.e(item, "$item");
        int i = item.playOrder;
        if (i == Integer.MAX_VALUE || i > 20) {
            item.playOrder = 20;
        }
        OrderEditActivity.a aVar = OrderEditActivity.f4386d;
        Context context = view.getContext();
        r.d(context, "it.context");
        OrderEditActivity.a.b(aVar, context, item, 0, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(View view) {
        u.h("长按图标拖动排序");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(LightOrderItemBinder this$0, LightExamModel item, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        this$0.c.invoke(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(LightOrderItemBinder this$0, LightExamModel item, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        Function1<? super LightExamModel, v> function1 = this$0.f4413d;
        if (function1 == null) {
            return;
        }
        function1.invoke(item);
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<LightOrderItemBinding> holder, final LightExamModel item) {
        r.e(holder, "holder");
        r.e(item, "item");
        if (item.isPlaying) {
            ((LightOrderItemBinding) holder.getViewBinding()).iconIv.setImageResource(R.drawable.ic_light_playing);
        } else {
            ((LightOrderItemBinding) holder.getViewBinding()).iconIv.d(item.icon, R.drawable.step_icon_dengguang);
        }
        if (this.b == 2 && (item.isStart || item.isLast())) {
            ((LightOrderItemBinding) holder.getViewBinding()).getRoot().getLayoutParams().height = 0;
        } else {
            ((LightOrderItemBinding) holder.getViewBinding()).getRoot().getLayoutParams().height = (int) ((LightOrderItemBinding) holder.getViewBinding()).getRoot().getResources().getDimension(R.dimen.dp_112);
        }
        if (this.b == 0) {
            ((LightOrderItemBinding) holder.getViewBinding()).sortTv.setVisibility(0);
            ((LightOrderItemBinding) holder.getViewBinding()).deleteTv.setVisibility(0);
            ((LightOrderItemBinding) holder.getViewBinding()).editTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.b2.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LightOrderItemBinder.s(item, view);
                }
            });
        } else {
            ((LightOrderItemBinding) holder.getViewBinding()).editTv.setVisibility(8);
            ((LightOrderItemBinding) holder.getViewBinding()).deleteTv.setVisibility(8);
            ((LightOrderItemBinding) holder.getViewBinding()).sortTv.setVisibility(8);
        }
        ((LightOrderItemBinding) holder.getViewBinding()).titleTv.setText(VoiceTextUtil.f9586a.a(item.desc));
        ((LightOrderItemBinding) holder.getViewBinding()).descTv.setText(item.standard);
        int i = item.playOrder;
        if (i == Integer.MAX_VALUE || i > 20) {
            item.playOrder = 20;
        }
        int i2 = item.playOrder;
        if (i2 == 0) {
            ((LightOrderItemBinding) holder.getViewBinding()).playOrderTv.setText("(随机播放)");
        } else if (i2 >= 20) {
            ((LightOrderItemBinding) holder.getViewBinding()).playOrderTv.setText("(最后一条)");
        } else {
            ((LightOrderItemBinding) holder.getViewBinding()).playOrderTv.setText("(第" + item.playOrder + "条)");
        }
        ((LightOrderItemBinding) holder.getViewBinding()).sortTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.b2.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LightOrderItemBinder.t(view);
            }
        });
        if (this.c != null) {
            ((LightOrderItemBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.b2.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LightOrderItemBinder.u(this.f4408a, item, view);
                }
            });
        }
        if (this.f4413d == null) {
            return;
        }
        ((LightOrderItemBinding) holder.getViewBinding()).deleteTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.b2.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LightOrderItemBinder.v(this.f4411a, item, view);
            }
        });
    }

    public final void w(Function1<? super LightExamModel, v> function1) {
        this.f4413d = function1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LightOrderItemBinder(int i, Function1<? super LightExamModel, v> function1) {
        this.b = i;
        this.c = function1;
    }
}
