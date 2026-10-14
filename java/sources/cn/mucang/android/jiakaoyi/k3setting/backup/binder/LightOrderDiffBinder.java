package cn.mucang.android.jiakaoyi.k3setting.backup.binder;

import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.LightOrderItemBinding;
import cn.mucang.jiakaoyi.uilib.utils.VoiceTextUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.backup.q.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/backup/binder/LightOrderDiffBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LightOrderDiffBinder extends ViewBindingBinder<LightExamModel, LightOrderItemBinding> {
    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<LightOrderItemBinding> holder, LightExamModel item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((LightOrderItemBinding) holder.getViewBinding()).editTv.setVisibility(8);
        ((LightOrderItemBinding) holder.getViewBinding()).deleteTv.setVisibility(8);
        ((LightOrderItemBinding) holder.getViewBinding()).sortTv.setVisibility(8);
        ((LightOrderItemBinding) holder.getViewBinding()).iconIv.d(item.icon, R.drawable.step_icon_dengguang);
        ((LightOrderItemBinding) holder.getViewBinding()).titleTv.setText(VoiceTextUtil.f9586a.a(item.desc));
        ((LightOrderItemBinding) holder.getViewBinding()).descTv.setText(item.standard);
        int i = item.playOrder;
        if (i == Integer.MAX_VALUE || i > 20) {
            item.playOrder = 20;
        }
        int i2 = item.playOrder;
        if (i2 == 0) {
            ((LightOrderItemBinding) holder.getViewBinding()).playOrderTv.setText("(随机播放)");
            return;
        }
        if (i2 >= 20) {
            ((LightOrderItemBinding) holder.getViewBinding()).playOrderTv.setText("(最后一条)");
            return;
        }
        ((LightOrderItemBinding) holder.getViewBinding()).playOrderTv.setText("(第" + item.playOrder + "条)");
    }
}
