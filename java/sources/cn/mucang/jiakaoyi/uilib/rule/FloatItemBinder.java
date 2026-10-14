package cn.mucang.jiakaoyi.uilib.rule;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.jiakaoyi.engine.config.route.value.FloatValue;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.jiakaoyi.uilib.rule.dialog.DeductRuleDialogHelper;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.databinding.RuleSettingItemFloatBinding;
import java.util.HashMap;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.a0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0019B!\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0002\u0010\tJ&\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\f2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u00152\u0006\u0010\u0016\u001a\u00020\u0002H\u0002J\u001e\u0010\u0017\u001a\u00020\u00122\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u00152\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J\u0016\u0010\u0018\u001a\u00020\u00122\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u0015H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R2\u0010\n\u001a&\u0012\u0004\u0012\u00020\f\u0012\b\u0012\u00060\rR\u00020\u00000\u000bj\u0012\u0012\u0004\u0012\u00020\f\u0012\b\u0012\u00060\rR\u00020\u0000`\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001a"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/FloatItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemFloatBinding;", "supportFragmentManager", "Landroidx/fragment/app/FragmentManager;", "hideCheckDeducts", "", "isEdit", "(Landroidx/fragment/app/FragmentManager;ZZ)V", "listenerMap", "Ljava/util/HashMap;", "Landroid/widget/EditText;", "Lcn/mucang/jiakaoyi/uilib/rule/FloatItemBinder$MyTextWatcher;", "Lkotlin/collections/HashMap;", "getSupportFragmentManager", "()Landroidx/fragment/app/FragmentManager;", "initListener", "", "et", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "onBindViewHolder", "onViewRecycled", "MyTextWatcher", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FloatItemBinder extends ViewBindingBinder<FloatValue, RuleSettingItemFloatBinding> {
    private final FragmentManager b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f9507d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashMap<EditText, a> f9508e;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.a0$a */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J*\u0010\u0014\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0017H\u0016J*\u0010\u001a\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0016R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/FloatItemBinder$MyTextWatcher;", "Landroid/text/TextWatcher;", "(Lcn/mucang/jiakaoyi/uilib/rule/FloatItemBinder;)V", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemFloatBinding;", "getHolder", "()Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "setHolder", "(Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;)V", "item", "Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;", "getItem", "()Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;", "setItem", "(Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;)V", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private final class a implements TextWatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ViewBindingHolder<RuleSettingItemFloatBinding> f9509a;
        private FloatValue b;

        public a(FloatItemBinder this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
        }

        public final void a(ViewBindingHolder<RuleSettingItemFloatBinding> viewBindingHolder) {
            this.f9509a = viewBindingHolder;
        }

        /* JADX WARN: Type inference failed for: r3v3, types: [T, java.lang.Float] */
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            float f2;
            RuleSettingItemFloatBinding ruleSettingItemFloatBinding;
            try {
                f2 = Float.parseFloat(String.valueOf(s));
            } catch (Exception unused) {
                f2 = -1.0f;
            }
            ViewBindingHolder<RuleSettingItemFloatBinding> viewBindingHolder = this.f9509a;
            EditText editText = null;
            if (viewBindingHolder != null && (ruleSettingItemFloatBinding = (RuleSettingItemFloatBinding) viewBindingHolder.getViewBinding()) != null) {
                editText = ruleSettingItemFloatBinding.valueEt;
            }
            if (editText != null) {
                editText.setSelected(f2 < BitmapDescriptorFactory.HUE_RED || f2 > 10000.0f);
            }
            FloatValue floatValue = this.b;
            if (floatValue == null) {
                return;
            }
            floatValue.value = Float.valueOf(f2);
        }

        public final void b(FloatValue floatValue) {
            this.b = floatValue;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    public /* synthetic */ FloatItemBinder(FragmentManager fragmentManager, boolean z, boolean z2, int i, kotlin.jvm.internal.o oVar) {
        this(fragmentManager, (i & 2) != 0 ? false : z, (i & 4) != 0 ? true : z2);
    }

    private final void o(EditText editText, ViewBindingHolder<RuleSettingItemFloatBinding> viewBindingHolder, FloatValue floatValue) {
        a aVar = this.f9508e.get(editText);
        if (aVar == null) {
            aVar = new a(this);
            editText.addTextChangedListener(aVar);
            this.f9508e.put(editText, aVar);
        }
        aVar.a(viewBindingHolder);
        aVar.b(floatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(FloatValue item, FloatItemBinder this$0, View view) {
        kotlin.jvm.internal.r.e(item, "$item");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DeductRuleDialogHelper.f9530a.a(item, this$0.getB());
    }

    /* JADX INFO: renamed from: n, reason: from getter */
    public final FragmentManager getB() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<RuleSettingItemFloatBinding> holder, final FloatValue item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        EditText editText = ((RuleSettingItemFloatBinding) holder.getViewBinding()).valueEt;
        kotlin.jvm.internal.r.d(editText, "holder.viewBinding.valueEt");
        editText.setEnabled(this.f9507d);
        if (this.f9507d) {
            o(editText, holder, item);
            editText.setHint("推荐范围：" + item.minValue + '-' + item.maxValue);
        }
        editText.setText(String.valueOf(item.value));
        ((RuleSettingItemFloatBinding) holder.getViewBinding()).descTv.setText(item.name);
        String str = item.deductIds;
        if (str == null || str.length() == 0) {
            ((RuleSettingItemFloatBinding) holder.getViewBinding()).checkDeducts.setVisibility(8);
        } else if (this.c) {
            ((RuleSettingItemFloatBinding) holder.getViewBinding()).checkDeducts.setVisibility(8);
        } else {
            ((RuleSettingItemFloatBinding) holder.getViewBinding()).checkDeducts.setVisibility(0);
            ((RuleSettingItemFloatBinding) holder.getViewBinding()).checkDeducts.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FloatItemBinder.r(item, this, view);
                }
            });
        }
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public void i(ViewBindingHolder<RuleSettingItemFloatBinding> holder) {
        kotlin.jvm.internal.r.e(holder, "holder");
        super.i(holder);
        a aVarRemove = this.f9508e.remove(((RuleSettingItemFloatBinding) holder.getViewBinding()).valueEt);
        if (aVarRemove == null) {
            return;
        }
        ((RuleSettingItemFloatBinding) holder.getViewBinding()).valueEt.removeTextChangedListener(aVarRemove);
    }

    public FloatItemBinder(FragmentManager supportFragmentManager, boolean z, boolean z2) {
        kotlin.jvm.internal.r.e(supportFragmentManager, "supportFragmentManager");
        this.b = supportFragmentManager;
        this.c = z;
        this.f9507d = z2;
        this.f9508e = new HashMap<>();
    }
}
