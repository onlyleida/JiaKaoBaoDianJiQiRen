package cn.mucang.jiakaoyi.uilib.ui.setting.signal.binder;

import android.view.View;
import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.signal.center.config.a;
import cn.mucang.jiakaoyi.uilib.ui.setting.signal.model.SignalReverseItem;
import com.mucang.android.jiakaoyi.uilib.databinding.SignalReverseItemBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.signal.z.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u001e\u0010\n\u001a\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\r\u001a\u00020\u0002H\u0016J\u0018\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H\u0002R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0012"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/binder/SignalReverseBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/model/SignalReverseItem;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseItemBinding;", "callback", "Lkotlin/Function0;", "", "(Lkotlin/jvm/functions/Function0;)V", "getCallback", "()Lkotlin/jvm/functions/Function0;", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "renderChoice", "viewBinding", "isReverse", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SignalReverseBinder extends ViewBindingBinder<SignalReverseItem, SignalReverseItemBinding> {
    private final Function0<v> b;

    public SignalReverseBinder(Function0<v> callback) {
        r.e(callback, "callback");
        this.b = callback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(SignalReverseItem item, SignalReverseBinder this$0, ViewBindingHolder holder, View view) {
        r.e(item, "$item");
        r.e(this$0, "this$0");
        r.e(holder, "$holder");
        item.c(!item.getIsReverse());
        this$0.r((SignalReverseItemBinding) holder.getViewBinding(), item.getIsReverse());
        a.h().c(item.getCarSignal());
        this$0.n().invoke();
        if (a.h().i().contains(item.getCarSignal())) {
            ActionLog.f3431a.m(r.m(item.getCarSignal().signalName, "设置信号反转true"));
        } else {
            ActionLog.f3431a.m(r.m(item.getCarSignal().signalName, "取消设置信号反转false"));
        }
    }

    private final void r(SignalReverseItemBinding signalReverseItemBinding, boolean z) {
        signalReverseItemBinding.stateIv.setSelected(z);
    }

    public final Function0<v> n() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<SignalReverseItemBinding> holder, final SignalReverseItem item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((SignalReverseItemBinding) holder.getViewBinding()).nameTv.setText(item.getCarSignal().signalName);
        ((SignalReverseItemBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.z.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SignalReverseBinder.q(item, this, holder, view);
            }
        });
        r((SignalReverseItemBinding) holder.getViewBinding(), item.getIsReverse());
    }
}
