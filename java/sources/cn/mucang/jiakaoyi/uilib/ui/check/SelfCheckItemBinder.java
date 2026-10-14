package cn.mucang.jiakaoyi.uilib.ui.check;

import android.graphics.Color;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.utils.CheckSignal;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.SelfCheckItemBinding;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.check.s, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/SelfCheckItemBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SelfCheckItemBinder extends ViewBindingBinder<CheckSignal, SelfCheckItemBinding> {
    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<SelfCheckItemBinding> holder, CheckSignal item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        ((SelfCheckItemBinding) holder.getViewBinding()).nameTv.setText(item.getSignalName());
        int state = item.getState();
        if (state == 0) {
            ((SelfCheckItemBinding) holder.getViewBinding()).getRoot().setBackgroundColor(Color.parseColor("#F2F2F2"));
            ((SelfCheckItemBinding) holder.getViewBinding()).stateIv.setImageResource(0);
        } else if (state == 1) {
            ((SelfCheckItemBinding) holder.getViewBinding()).getRoot().setBackgroundColor(Color.parseColor("#DBF6F3"));
            ((SelfCheckItemBinding) holder.getViewBinding()).stateIv.setImageResource(R.drawable.ic_check_pass);
        } else {
            if (state != 2) {
                return;
            }
            ((SelfCheckItemBinding) holder.getViewBinding()).getRoot().setBackgroundColor(Color.parseColor("#FCE7E5"));
            ((SelfCheckItemBinding) holder.getViewBinding()).stateIv.setImageResource(R.drawable.ic_check_error);
        }
    }
}
