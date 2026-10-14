package cn.mucang.jiakaoyi.uilib.ui.setting.signal.binder;

import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.jiakaoyi.uilib.ui.setting.signal.model.SignalStandard2Item;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.SignalCheckItemStandard2Binding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.signal.z.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\bJ\u001e\u0010\u000b\u001a\u00020\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/binder/SignalStandard2Binder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/model/SignalStandard2Item;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckItemStandard2Binding;", "onCheckClick", "Lkotlin/Function1;", "", "", "(Lkotlin/jvm/functions/Function1;)V", "getOnCheckClick", "()Lkotlin/jvm/functions/Function1;", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SignalStandard2Binder extends ViewBindingBinder<SignalStandard2Item, SignalCheckItemStandard2Binding> {
    private final Function1<Integer, v> b;

    /* JADX WARN: Multi-variable type inference failed */
    public SignalStandard2Binder(Function1<? super Integer, v> onCheckClick) {
        r.e(onCheckClick, "onCheckClick");
        this.b = onCheckClick;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(SignalStandard2Binder this$0, SignalStandard2Item item, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        this$0.n().invoke(Integer.valueOf(item.getF10216d()));
    }

    public final Function1<Integer, v> n() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<SignalCheckItemStandard2Binding> holder, final SignalStandard2Item item) {
        r.e(holder, "holder");
        r.e(item, "item");
        if (item.getIsOn()) {
            ((SignalCheckItemStandard2Binding) holder.getViewBinding()).stateIv.setImageResource(R.drawable.signal_ic_on);
        } else {
            ((SignalCheckItemStandard2Binding) holder.getViewBinding()).stateIv.setImageResource(R.drawable.signal_ic_off);
        }
        if (item.getChecked()) {
            ((SignalCheckItemStandard2Binding) holder.getViewBinding()).checkCb.setImageResource(R.drawable.ic__signal_checked);
        } else {
            ((SignalCheckItemStandard2Binding) holder.getViewBinding()).checkCb.setImageResource(R.drawable.ic__signal_unchecked);
        }
        ((SignalCheckItemStandard2Binding) holder.getViewBinding()).nameTv.setText(item.getText());
        ((SignalCheckItemStandard2Binding) holder.getViewBinding()).checkCb.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.z.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SignalStandard2Binder.q(this.f10245a, item, view);
            }
        });
    }
}
