package cn.mucang.jiakaoyi.uilib.rule;

import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.jiakaoyi.uilib.rule.dialog.DeductRuleDialogHelper;
import com.mucang.android.jiakaoyi.uilib.databinding.RuleSettingItemSwitchBinding;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.k0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B!\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0002\u0010\tJ\u001e\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016J\u0018\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0007H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/SwitchItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;", "supportFragmentManager", "Landroidx/fragment/app/FragmentManager;", "hideCheckDeducts", "", "isEdit", "(Landroidx/fragment/app/FragmentManager;ZZ)V", "getSupportFragmentManager", "()Landroidx/fragment/app/FragmentManager;", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "setSelect", "viewBinding", "isSelected", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SwitchItemBinder extends ViewBindingBinder<BooleanValue, RuleSettingItemSwitchBinding> {
    private final FragmentManager b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f9552d;

    public /* synthetic */ SwitchItemBinder(FragmentManager fragmentManager, boolean z, boolean z2, int i, kotlin.jvm.internal.o oVar) {
        this(fragmentManager, (i & 2) != 0 ? false : z, (i & 4) != 0 ? true : z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3, types: [T, java.lang.Boolean] */
    public static final void r(BooleanValue item, SwitchItemBinder this$0, ViewBindingHolder holder, View view) {
        kotlin.jvm.internal.r.e(item, "$item");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(holder, "$holder");
        item.value = Boolean.valueOf(!view.isSelected());
        RuleSettingItemSwitchBinding ruleSettingItemSwitchBinding = (RuleSettingItemSwitchBinding) holder.getViewBinding();
        T t = item.value;
        kotlin.jvm.internal.r.d(t, "item.value");
        this$0.t(ruleSettingItemSwitchBinding, ((Boolean) t).booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(BooleanValue item, SwitchItemBinder this$0, View view) {
        kotlin.jvm.internal.r.e(item, "$item");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DeductRuleDialogHelper.f9530a.a(item, this$0.getB());
    }

    private final void t(RuleSettingItemSwitchBinding ruleSettingItemSwitchBinding, boolean z) {
        if (z) {
            ruleSettingItemSwitchBinding.valueTv.setText("是");
        } else {
            ruleSettingItemSwitchBinding.valueTv.setText("否");
        }
        ruleSettingItemSwitchBinding.valueTv.setSelected(z);
    }

    /* JADX INFO: renamed from: n, reason: from getter */
    public final FragmentManager getB() {
        return this.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<RuleSettingItemSwitchBinding> holder, final BooleanValue item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        ((RuleSettingItemSwitchBinding) holder.getViewBinding()).descTv.setText(item.name);
        TextView textView = ((RuleSettingItemSwitchBinding) holder.getViewBinding()).valueTv;
        T t = item.value;
        kotlin.jvm.internal.r.d(t, "item.value");
        textView.setSelected(((Boolean) t).booleanValue());
        ((RuleSettingItemSwitchBinding) holder.getViewBinding()).valueTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SwitchItemBinder.r(item, this, holder, view);
            }
        });
        ((RuleSettingItemSwitchBinding) holder.getViewBinding()).valueTv.setEnabled(this.f9552d);
        RuleSettingItemSwitchBinding ruleSettingItemSwitchBinding = (RuleSettingItemSwitchBinding) holder.getViewBinding();
        T t2 = item.value;
        kotlin.jvm.internal.r.d(t2, "item.value");
        t(ruleSettingItemSwitchBinding, ((Boolean) t2).booleanValue());
        String str = item.deductIds;
        if (str == null || str.length() == 0) {
            ((RuleSettingItemSwitchBinding) holder.getViewBinding()).checkDeducts.setVisibility(8);
        } else if (this.c) {
            ((RuleSettingItemSwitchBinding) holder.getViewBinding()).checkDeducts.setVisibility(8);
        } else {
            ((RuleSettingItemSwitchBinding) holder.getViewBinding()).checkDeducts.setVisibility(0);
            ((RuleSettingItemSwitchBinding) holder.getViewBinding()).checkDeducts.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.w
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SwitchItemBinder.s(item, this, view);
                }
            });
        }
    }

    public SwitchItemBinder(FragmentManager supportFragmentManager, boolean z, boolean z2) {
        kotlin.jvm.internal.r.e(supportFragmentManager, "supportFragmentManager");
        this.b = supportFragmentManager;
        this.c = z;
        this.f9552d = z2;
    }
}
