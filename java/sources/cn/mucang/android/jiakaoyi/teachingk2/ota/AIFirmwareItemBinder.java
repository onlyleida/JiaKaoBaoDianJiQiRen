package cn.mucang.android.jiakaoyi.teachingk2.ota;

import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.teachbase.databinding.RobotFirmwareItemBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.ota.w, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u001e\u0010\b\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0016R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ota/AIFirmwareItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/ota/AIFirmwareModel;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/RobotFirmwareItemBinding;", "onUpgrade", "Lkotlin/Function1;", "", "(Lkotlin/jvm/functions/Function1;)V", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AIFirmwareItemBinder extends ViewBindingBinder<AIFirmwareModel, RobotFirmwareItemBinding> {
    private final Function1<AIFirmwareModel, kotlin.v> b;

    /* JADX WARN: Multi-variable type inference failed */
    public AIFirmwareItemBinder(Function1<? super AIFirmwareModel, kotlin.v> onUpgrade) {
        kotlin.jvm.internal.r.e(onUpgrade, "onUpgrade");
        this.b = onUpgrade;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(AIFirmwareItemBinder this$0, AIFirmwareModel item, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        this$0.b.invoke(item);
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<RobotFirmwareItemBinding> holder, final AIFirmwareModel item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        ((RobotFirmwareItemBinding) holder.getViewBinding()).text.setText(item.getName());
        ((RobotFirmwareItemBinding) holder.getViewBinding()).versionLocal.setText(kotlin.jvm.internal.r.m("固件版本:", item.getLocalVersion()));
        ((RobotFirmwareItemBinding) holder.getViewBinding()).versionOnLine.setText("(新版本:" + ((Object) item.getOnlineVersion()) + ')');
        ((RobotFirmwareItemBinding) holder.getViewBinding()).versionOnLine.setVisibility(0);
        ((RobotFirmwareItemBinding) holder.getViewBinding()).upgrade.setVisibility(cn.mucang.android.jiakaoyi.signal.ai.h.a.a() ? 0 : 4);
        ((RobotFirmwareItemBinding) holder.getViewBinding()).upgrade.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AIFirmwareItemBinder.p(this.f7440a, item, view);
            }
        });
    }
}
