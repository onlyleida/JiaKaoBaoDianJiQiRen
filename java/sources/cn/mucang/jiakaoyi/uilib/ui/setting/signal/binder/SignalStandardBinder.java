package cn.mucang.jiakaoyi.uilib.ui.setting.signal.binder;

import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.jiakaoyi.uilib.ui.setting.signal.model.SignalStandardItem;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.SignalCheckItemStandardBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.signal.z.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/binder/SignalStandardBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/model/SignalStandardItem;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckItemStandardBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SignalStandardBinder extends ViewBindingBinder<SignalStandardItem, SignalCheckItemStandardBinding> {
    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<SignalCheckItemStandardBinding> holder, SignalStandardItem item) {
        r.e(holder, "holder");
        r.e(item, "item");
        if (item.getIsOn()) {
            ((SignalCheckItemStandardBinding) holder.getViewBinding()).stateIv.setImageResource(R.drawable.signal_ic_on);
        } else {
            ((SignalCheckItemStandardBinding) holder.getViewBinding()).stateIv.setImageResource(R.drawable.signal_ic_off);
        }
        ((SignalCheckItemStandardBinding) holder.getViewBinding()).nameTv.setText(item.getText());
    }
}
