package cn.mucang.android.jiakaoyi.k3setting.backup.binder;

import android.widget.TextView;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import cn.mucang.android.jiakaoyi.k3setting.databinding.RouteMyBackupItemBinding;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import cn.mucang.jiakaoyi.uilib.model.RouteNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.backup.q.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/backup/binder/RouteMyBackupItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMyBackupItemBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteMyBackupItemBinder extends ViewBindingBinder<LocalRoute, RouteMyBackupItemBinding> {
    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<RouteMyBackupItemBinding> holder, LocalRoute item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((RouteMyBackupItemBinding) holder.getViewBinding()).nameTv.setText(item.getRouteName());
        TextView textView = ((RouteMyBackupItemBinding) holder.getViewBinding()).descTv;
        StringBuilder sb = new StringBuilder();
        sb.append("长度");
        sb.append(FormatUtils.b(item.getDistance()));
        sb.append("公里  ");
        List<RouteNode> nodes = item.getNodes();
        sb.append(nodes == null ? null : Integer.valueOf(nodes.size()));
        sb.append("个指令");
        textView.setText(sb.toString());
    }
}
