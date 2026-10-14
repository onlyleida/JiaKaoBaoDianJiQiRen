package cn.mucang.jiakaoyi.uilib.ui.setting;

import android.content.Context;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.utils.SchoolDeviceUtil;
import cn.mucang.jiakaoyi.uilib.ui.login.p008j.AccountUtils;
import com.mucang.android.jiakaoyi.uilib.databinding.SettingItemBinding;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.u0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingItemBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SettingItemBinder extends ViewBindingBinder<SettingItem, SettingItemBinding> {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(SettingItem item, View it) {
        kotlin.jvm.internal.r.e(item, "$item");
        if (item.getNeedLogin() && !SchoolDeviceUtil.f3622a.a() && !AccountUtils.b()) {
            cn.mucang.android.core.utils.u.h("请先登录");
            return;
        }
        SettingItemClick onClickListener = item.getOnClickListener();
        if (onClickListener == null) {
            return;
        }
        kotlin.jvm.internal.r.d(it, "it");
        onClickListener.a(it, item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(SettingItem item, View view) {
        kotlin.jvm.internal.r.e(item, "$item");
        cn.mucang.android.jiakaoyi.framework.h.b<Context> bVarF = item.f();
        if (bVarF == null) {
            return;
        }
        bVarF.callback(view.getContext());
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<SettingItemBinding> holder, final SettingItem item) {
        kotlin.v vVar;
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        ((SettingItemBinding) holder.getViewBinding()).iconIv.setImageResource(item.getIcon());
        ((SettingItemBinding) holder.getViewBinding()).titleTv.setText(item.getTitle());
        String desc = item.getDesc();
        if (desc == null) {
            vVar = null;
        } else {
            ((SettingItemBinding) holder.getViewBinding()).descTv.setVisibility(0);
            ((SettingItemBinding) holder.getViewBinding()).descTv.setText(desc);
            vVar = kotlin.v.f15822a;
        }
        if (vVar == null) {
            ((SettingItemBinding) holder.getViewBinding()).descTv.setVisibility(8);
        }
        ((SettingItemBinding) holder.getViewBinding()).dividerIv.setVisibility(item.getDivider() ? 0 : 8);
        ((SettingItemBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.l0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingItemBinder.q(item, view);
            }
        });
        if (item.getHavePermission() || item.f() == null) {
            ((SettingItemBinding) holder.getViewBinding()).resetTv.setVisibility(8);
        } else {
            ((SettingItemBinding) holder.getViewBinding()).resetTv.setVisibility(0);
            ((SettingItemBinding) holder.getViewBinding()).resetTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.m0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SettingItemBinder.r(item, view);
                }
            });
        }
    }
}
