package cn.mucang.android.jiakaoyi.teachingk2.ota;

import android.view.View;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.teachbase.databinding.RobotFirmwareItemBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.ota.x, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B-\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\bJ\u001e\u0010\t\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b2\u0006\u0010\f\u001a\u00020\u0002H\u0016R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmwareModel;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/RobotFirmwareItemBinding;", "onUpdate", "Lkotlin/Function1;", "", "onUpgrade", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RobotFirmWareItemBinder extends ViewBindingBinder<RobotFirmwareModel, RobotFirmwareItemBinding> {
    private final Function1<RobotFirmwareModel, kotlin.v> b;
    private final Function1<RobotFirmwareModel, kotlin.v> c;

    /* JADX WARN: Multi-variable type inference failed */
    public RobotFirmWareItemBinder(Function1<? super RobotFirmwareModel, kotlin.v> onUpdate, Function1<? super RobotFirmwareModel, kotlin.v> onUpgrade) {
        kotlin.jvm.internal.r.e(onUpdate, "onUpdate");
        kotlin.jvm.internal.r.e(onUpgrade, "onUpgrade");
        this.b = onUpdate;
        this.c = onUpgrade;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(RobotFirmWareItemBinder this$0, RobotFirmwareModel item, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        this$0.b.invoke(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(RobotFirmWareItemBinder this$0, RobotFirmwareModel item, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        this$0.c.invoke(item);
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<RobotFirmwareItemBinding> holder, final RobotFirmwareModel item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        ((RobotFirmwareItemBinding) holder.getViewBinding()).text.setText(item.getName());
        ((RobotFirmwareItemBinding) holder.getViewBinding()).hardwareVersion.setText(kotlin.jvm.internal.r.m("硬件版本: ", item.getHardwareVersion()));
        ((RobotFirmwareItemBinding) holder.getViewBinding()).versionLocal.setText(kotlin.jvm.internal.r.m("固件版本: ", item.getLocalVersion()));
        ((RobotFirmwareItemBinding) holder.getViewBinding()).versionOnLine.setText("(新版本: " + item.getOnlineVersion() + ')');
        TextView textView = ((RobotFirmwareItemBinding) holder.getViewBinding()).versionOnLine;
        Integer onlineVersion = item.getOnlineVersion();
        kotlin.jvm.internal.r.c(onlineVersion);
        int iIntValue = onlineVersion.intValue();
        Integer localVersion = item.getLocalVersion();
        kotlin.jvm.internal.r.c(localVersion);
        textView.setVisibility(iIntValue > localVersion.intValue() ? 0 : 8);
        ((RobotFirmwareItemBinding) holder.getViewBinding()).update.setVisibility(i0.b("__key_use_local_ota__", false) ? 0 : 4);
        ((RobotFirmwareItemBinding) holder.getViewBinding()).update.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RobotFirmWareItemBinder.q(this.f7441a, item, view);
            }
        });
        ((RobotFirmwareItemBinding) holder.getViewBinding()).upgrade.setVisibility(4);
        ((RobotFirmwareItemBinding) holder.getViewBinding()).upgrade.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RobotFirmWareItemBinder.r(this.f7442a, item, view);
            }
        });
    }
}
