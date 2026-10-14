package cn.mucang.android.jiakaoyi.teachingk2.safe.ui.binder;

import android.app.Activity;
import android.view.View;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemSafeArgumentsBinding;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeArgumentModel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/SafeArgumentsItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeArgumentModel;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeArgumentsBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SafeArgumentsItemBinder extends ViewBindingBinder<SafeArgumentModel, ItemSafeArgumentsBinding> {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(ViewBindingHolder holder, final SafeArgumentModel item, View view) {
        r.e(holder, "$holder");
        r.e(item, "$item");
        try {
            final float f2 = Float.parseFloat(((ItemSafeArgumentsBinding) holder.getViewBinding()).valueEt.getText().toString());
            double d2 = f2;
            if (d2 > 1.5d) {
                u.h("时间设置太大");
            } else {
                if (d2 < -0.1d) {
                    u.h("时间设置太小");
                    return;
                }
                Activity activityI = MucangConfig.i();
                r.d(activityI, "getCurrentActivity()");
                LocalConfigManager.c(activityI, item.getConfig(), String.valueOf(f2), new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.binder.SafeArgumentsItemBinder$onBindViewHolder$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ v invoke() {
                        invoke2();
                        return v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        item.setValue(f2);
                        u.h("保存成功");
                    }
                });
            }
        } catch (Exception unused) {
            u.h("时间设置失败");
        }
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<ItemSafeArgumentsBinding> holder, final SafeArgumentModel item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((ItemSafeArgumentsBinding) holder.getViewBinding()).text.setText(item.getDesc());
        ((ItemSafeArgumentsBinding) holder.getViewBinding()).valueEt.setText(String.valueOf(item.getValue()));
        ((ItemSafeArgumentsBinding) holder.getViewBinding()).btn.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.binder.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SafeArgumentsItemBinder.p(holder, item, view);
            }
        });
    }
}
