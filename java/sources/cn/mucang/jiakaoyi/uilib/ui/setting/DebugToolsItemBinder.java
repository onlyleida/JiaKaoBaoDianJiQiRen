package cn.mucang.jiakaoyi.uilib.ui.setting;

import android.app.Activity;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.jiakaoyi.uilib.model.DebugToolsItem;
import com.mucang.android.jiakaoyi.uilib.databinding.ItemDebugToolsBinding;
import java.util.Objects;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.r0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ItemDebugToolsBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DebugToolsItemBinder extends ViewBindingBinder<DebugToolsItem, ItemDebugToolsBinding> {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(DebugToolsItem item, View view) {
        kotlin.jvm.internal.r.e(item, "$item");
        if (item.url == null || item.md5 == null) {
            cn.mucang.android.core.utils.u.h("下载地址有问题");
            return;
        }
        if (MucangConfig.i() instanceof DebugToolsActivity) {
            Activity activityI = MucangConfig.i();
            Objects.requireNonNull(activityI, "null cannot be cast to non-null type cn.mucang.jiakaoyi.uilib.ui.setting.DebugToolsActivity");
            FragmentManager supportFragmentManager = ((DebugToolsActivity) activityI).getSupportFragmentManager();
            kotlin.jvm.internal.r.d(supportFragmentManager, "MucangConfig.getCurrentA…y).supportFragmentManager");
            cn.mucang.jiakaoyi.uilib.upgrade.update.q.f(supportFragmentManager, item.url, item.name, item.packageName, item.md5, item.remark);
        }
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<ItemDebugToolsBinding> holder, final DebugToolsItem item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        ((ItemDebugToolsBinding) holder.getViewBinding()).tvName.setText(item.name);
        ((ItemDebugToolsBinding) holder.getViewBinding()).btnDownload.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DebugToolsItemBinder.p(item, view);
            }
        });
    }
}
