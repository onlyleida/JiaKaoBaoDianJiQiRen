package cn.mucang.jiakaoyi.uilib.ui.setting.ota;

import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import com.mucang.android.jiakaoyi.uilib.databinding.FirmwareItemBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.ota.m, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u001e\u0010\b\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0016R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/FirmwareItemBinding;", "onUpdate", "Lkotlin/Function1;", "", "(Lkotlin/jvm/functions/Function1;)V", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FirmWareItemBinder extends ViewBindingBinder<FirmwareModel, FirmwareItemBinding> {
    private final Function1<FirmwareModel, v> b;

    /* JADX WARN: Multi-variable type inference failed */
    public FirmWareItemBinder(Function1<? super FirmwareModel, v> onUpdate) {
        r.e(onUpdate, "onUpdate");
        this.b = onUpdate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(FirmWareItemBinder this$0, FirmwareModel item, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        this$0.b.invoke(item);
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<FirmwareItemBinding> holder, final FirmwareModel item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((FirmwareItemBinding) holder.getViewBinding()).text.setText(item.name);
        ((FirmwareItemBinding) holder.getViewBinding()).versionLocal.setText(r.m("当前版本:", Integer.valueOf(item.localVersion)));
        ((FirmwareItemBinding) holder.getViewBinding()).versionOnLine.setText(r.m("线上版本:", Integer.valueOf(item.onlineVersion)));
        ((FirmwareItemBinding) holder.getViewBinding()).update.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.ota.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FirmWareItemBinder.p(this.f10180a, item, view);
            }
        });
    }
}
