package cn.mucang.jiakaoyi.uilib.ui.setting.signal.binder;

import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.jiakaoyi.uilib.ui.setting.gps.HpGpsTestActivity;
import cn.mucang.jiakaoyi.uilib.ui.setting.signal.model.SignalBaseItem;
import com.mucang.android.jiakaoyi.uilib.databinding.SignalCheckItemBaseBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.signal.z.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/binder/SignalBaseBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/model/SignalBaseItem;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckItemBaseBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SignalBaseBinder extends ViewBindingBinder<SignalBaseItem, SignalCheckItemBaseBinding> {
    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean p(View view) {
        HpGpsTestActivity.n(view == null ? null : view.getContext());
        return true;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<SignalCheckItemBaseBinding> holder, SignalBaseItem item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((SignalCheckItemBaseBinding) holder.getViewBinding()).nameTv.setText(item.getText());
        ((SignalCheckItemBaseBinding) holder.getViewBinding()).valueTv.setText(item.getValue());
        CharSequence text = ((SignalCheckItemBaseBinding) holder.getViewBinding()).nameTv.getText();
        r.d(text, "holder.viewBinding.nameTv.text");
        if (StringsKt__StringsKt.G(text, "基站", false, 2, null)) {
            ((SignalCheckItemBaseBinding) holder.getViewBinding()).nameTv.setOnLongClickListener(new View.OnLongClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.z.a
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return SignalBaseBinder.p(view);
                }
            });
        }
    }
}
