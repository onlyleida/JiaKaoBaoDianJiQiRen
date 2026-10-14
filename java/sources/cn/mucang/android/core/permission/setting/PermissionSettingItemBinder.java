package cn.mucang.android.core.permission.setting;

import android.graphics.Color;
import android.view.View;
import cn.mucang.android.core.utils.z;
import cn.mucang.android.framework.core.databinding.ItemPermissionSettingLayoutBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.permission.setting.o, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000fB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001e\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/core/permission/setting/PermissionSettingItemBinder;", "Lcn/mucang/android/core/viewbinding/ViewBindingBinder;", "Lcn/mucang/android/core/permission/setting/PermissionInfo;", "Lcn/mucang/android/framework/core/databinding/ItemPermissionSettingLayoutBinding;", "itemClickListener", "Lcn/mucang/android/core/permission/setting/PermissionSettingItemBinder$IItemClickListener;", "(Lcn/mucang/android/core/permission/setting/PermissionSettingItemBinder$IItemClickListener;)V", "getItemClickListener", "()Lcn/mucang/android/core/permission/setting/PermissionSettingItemBinder$IItemClickListener;", "setItemClickListener", "onBindViewHolder", "", "holder", "Lcn/mucang/android/core/viewbinding/ViewBindingHolder;", "data", "IItemClickListener", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PermissionSettingItemBinder extends f.a.a.a.viewbinding.a<PermissionInfo, ItemPermissionSettingLayoutBinding> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f2617a;

    /* JADX INFO: renamed from: cn.mucang.android.core.permission.setting.o$a */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcn/mucang/android/core/permission/setting/PermissionSettingItemBinder$IItemClickListener;", "", "onItemClick", "", "data", "Lcn/mucang/android/core/permission/setting/PermissionInfo;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface a {
        void a(PermissionInfo permissionInfo);
    }

    public PermissionSettingItemBinder(a itemClickListener) {
        r.e(itemClickListener, "itemClickListener");
        this.f2617a = itemClickListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(PermissionSettingItemBinder this$0, PermissionInfo data, View view) {
        r.e(this$0, "this$0");
        r.e(data, "$data");
        this$0.getF2617a().a(data);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final a getF2617a() {
        return this.f2617a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // me.drakeet.multitype.b
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(f.a.a.a.viewbinding.c<ItemPermissionSettingLayoutBinding> holder, final PermissionInfo data) {
        r.e(holder, "holder");
        r.e(data, "data");
        ItemPermissionSettingLayoutBinding itemPermissionSettingLayoutBinding = (ItemPermissionSettingLayoutBinding) holder.getViewBinding();
        itemPermissionSettingLayoutBinding.tvTitle.setText("允许" + ((Object) cn.mucang.android.core.utils.p.c()) + "访问" + ((Object) data.getName()) + "权限");
        itemPermissionSettingLayoutBinding.tvDes.setText(data.getReasonShort());
        if (z.a(data.getAuthority())) {
            itemPermissionSettingLayoutBinding.tvAuthorizedStatus.setText("已授权");
            itemPermissionSettingLayoutBinding.tvAuthorizedStatus.setTextColor(Color.parseColor("#333333"));
        } else {
            itemPermissionSettingLayoutBinding.tvAuthorizedStatus.setText("权限设置");
            itemPermissionSettingLayoutBinding.tvAuthorizedStatus.setTextColor(Color.parseColor("#04A5FF"));
        }
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.core.permission.setting.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PermissionSettingItemBinder.d(this.f2614a, data, view);
            }
        });
    }
}
