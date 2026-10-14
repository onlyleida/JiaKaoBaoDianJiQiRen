package cn.mucang.jiakaoyi.uilib.rule;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.jiakaoyi.engine.config.route.value.RangeValue;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.jiakaoyi.uilib.rule.dialog.DeductRuleDialogHelper;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.databinding.RuleSettingItemScopeBinding;
import java.util.HashMap;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.g0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u001c\u001dB!\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0002\u0010\tJ&\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\f2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u00172\u0006\u0010\u0018\u001a\u00020\u0002H\u0002J&\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\f2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u00172\u0006\u0010\u0018\u001a\u00020\u0002H\u0002J\u001e\u0010\u001a\u001a\u00020\u00142\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u00172\u0006\u0010\u0018\u001a\u00020\u0002H\u0016J\u0016\u0010\u001b\u001a\u00020\u00142\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u0017H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R2\u0010\n\u001a&\u0012\u0004\u0012\u00020\f\u0012\b\u0012\u00060\rR\u00020\u00000\u000bj\u0012\u0012\u0004\u0012\u00020\f\u0012\b\u0012\u00060\rR\u00020\u0000`\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R2\u0010\u000f\u001a&\u0012\u0004\u0012\u00020\f\u0012\b\u0012\u00060\u0010R\u00020\u00000\u000bj\u0012\u0012\u0004\u0012\u00020\f\u0012\b\u0012\u00060\u0010R\u00020\u0000`\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/RangeItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemScopeBinding;", "supportFragmentManager", "Landroidx/fragment/app/FragmentManager;", "hideCheckDeducts", "", "isEdit", "(Landroidx/fragment/app/FragmentManager;ZZ)V", "maxListenerMap", "Ljava/util/HashMap;", "Landroid/widget/EditText;", "Lcn/mucang/jiakaoyi/uilib/rule/RangeItemBinder$MaxListener;", "Lkotlin/collections/HashMap;", "minListenerMap", "Lcn/mucang/jiakaoyi/uilib/rule/RangeItemBinder$MinListener;", "getSupportFragmentManager", "()Landroidx/fragment/app/FragmentManager;", "initMaxListener", "", "et", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "initMinListener", "onBindViewHolder", "onViewRecycled", "MaxListener", "MinListener", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RangeItemBinder extends ViewBindingBinder<RangeValue, RuleSettingItemScopeBinding> {
    private final FragmentManager b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f9542d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashMap<EditText, b> f9543e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final HashMap<EditText, a> f9544f;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.g0$a */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J*\u0010\u0014\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0017H\u0016J*\u0010\u001a\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0016R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/RangeItemBinder$MaxListener;", "Landroid/text/TextWatcher;", "(Lcn/mucang/jiakaoyi/uilib/rule/RangeItemBinder;)V", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemScopeBinding;", "getHolder", "()Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "setHolder", "(Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;)V", "item", "Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;", "getItem", "()Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;", "setItem", "(Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;)V", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private final class a implements TextWatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ViewBindingHolder<RuleSettingItemScopeBinding> f9545a;
        private RangeValue b;

        public a(RangeItemBinder this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
        }

        public final void a(ViewBindingHolder<RuleSettingItemScopeBinding> viewBindingHolder) {
            this.f9545a = viewBindingHolder;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            RangeValue rangeValue;
            int i;
            ViewBindingHolder<RuleSettingItemScopeBinding> viewBindingHolder = this.f9545a;
            if (viewBindingHolder == null || (rangeValue = this.b) == null) {
                return;
            }
            try {
                i = Integer.parseInt(String.valueOf(s));
            } catch (Exception unused) {
                i = -1;
            }
            ((RuleSettingItemScopeBinding) viewBindingHolder.getViewBinding()).minEt.setSelected(i < 0 || i > 10000 || rangeValue.value2 < ((Number) rangeValue.value).intValue());
            rangeValue.value2 = i;
        }

        public final void b(RangeValue rangeValue) {
            this.b = rangeValue;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.g0$b */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J*\u0010\u0014\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0017H\u0016J*\u0010\u001a\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0016R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/RangeItemBinder$MinListener;", "Landroid/text/TextWatcher;", "(Lcn/mucang/jiakaoyi/uilib/rule/RangeItemBinder;)V", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemScopeBinding;", "getHolder", "()Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "setHolder", "(Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;)V", "item", "Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;", "getItem", "()Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;", "setItem", "(Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;)V", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private final class b implements TextWatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ViewBindingHolder<RuleSettingItemScopeBinding> f9546a;
        private RangeValue b;

        public b(RangeItemBinder this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
        }

        public final void a(ViewBindingHolder<RuleSettingItemScopeBinding> viewBindingHolder) {
            this.f9546a = viewBindingHolder;
        }

        /* JADX WARN: Type inference failed for: r4v3, types: [T, java.lang.Integer] */
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            RangeValue rangeValue;
            int i;
            ViewBindingHolder<RuleSettingItemScopeBinding> viewBindingHolder = this.f9546a;
            if (viewBindingHolder == null || (rangeValue = this.b) == null) {
                return;
            }
            try {
                i = Integer.parseInt(String.valueOf(s));
            } catch (Exception unused) {
                i = -1;
            }
            ((RuleSettingItemScopeBinding) viewBindingHolder.getViewBinding()).minEt.setSelected(i < 0 || i > 10000);
            rangeValue.value = Integer.valueOf(i);
        }

        public final void b(RangeValue rangeValue) {
            this.b = rangeValue;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    public /* synthetic */ RangeItemBinder(FragmentManager fragmentManager, boolean z, boolean z2, int i, kotlin.jvm.internal.o oVar) {
        this(fragmentManager, (i & 2) != 0 ? false : z, (i & 4) != 0 ? true : z2);
    }

    private final void o(EditText editText, ViewBindingHolder<RuleSettingItemScopeBinding> viewBindingHolder, RangeValue rangeValue) {
        a aVar = this.f9544f.get(editText);
        if (aVar == null) {
            aVar = new a(this);
            editText.addTextChangedListener(aVar);
            this.f9544f.put(editText, aVar);
        }
        aVar.a(viewBindingHolder);
        aVar.b(rangeValue);
    }

    private final void p(EditText editText, ViewBindingHolder<RuleSettingItemScopeBinding> viewBindingHolder, RangeValue rangeValue) {
        b bVar = this.f9543e.get(editText);
        if (bVar == null) {
            bVar = new b(this);
            editText.addTextChangedListener(bVar);
            this.f9543e.put(editText, bVar);
        }
        bVar.a(viewBindingHolder);
        bVar.b(rangeValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(RangeValue item, RangeItemBinder this$0, View view) {
        kotlin.jvm.internal.r.e(item, "$item");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DeductRuleDialogHelper.f9530a.a(item, this$0.getB());
    }

    /* JADX INFO: renamed from: n, reason: from getter */
    public final FragmentManager getB() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<RuleSettingItemScopeBinding> holder, final RangeValue item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        EditText editText = ((RuleSettingItemScopeBinding) holder.getViewBinding()).minEt;
        kotlin.jvm.internal.r.d(editText, "holder.viewBinding.minEt");
        p(editText, holder, item);
        EditText editText2 = ((RuleSettingItemScopeBinding) holder.getViewBinding()).maxEt;
        kotlin.jvm.internal.r.d(editText2, "holder.viewBinding.maxEt");
        o(editText2, holder, item);
        ((RuleSettingItemScopeBinding) holder.getViewBinding()).descTv.setText(item.name);
        ((RuleSettingItemScopeBinding) holder.getViewBinding()).minEt.setText(String.valueOf(item.value));
        ((RuleSettingItemScopeBinding) holder.getViewBinding()).maxEt.setText(String.valueOf(item.value2));
        ((RuleSettingItemScopeBinding) holder.getViewBinding()).minEt.setEnabled(this.f9542d);
        ((RuleSettingItemScopeBinding) holder.getViewBinding()).maxEt.setEnabled(this.f9542d);
        ((RuleSettingItemScopeBinding) holder.getViewBinding()).splitTv.setEnabled(this.f9542d);
        String str = item.deductIds;
        if (str == null || str.length() == 0) {
            ((RuleSettingItemScopeBinding) holder.getViewBinding()).checkDeducts.setVisibility(8);
        } else if (this.c) {
            ((RuleSettingItemScopeBinding) holder.getViewBinding()).checkDeducts.setVisibility(8);
        } else {
            ((RuleSettingItemScopeBinding) holder.getViewBinding()).checkDeducts.setVisibility(0);
            ((RuleSettingItemScopeBinding) holder.getViewBinding()).checkDeducts.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RangeItemBinder.s(item, this, view);
                }
            });
        }
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public void i(ViewBindingHolder<RuleSettingItemScopeBinding> holder) {
        kotlin.jvm.internal.r.e(holder, "holder");
        super.i(holder);
        b bVarRemove = this.f9543e.remove(((RuleSettingItemScopeBinding) holder.getViewBinding()).minEt);
        if (bVarRemove != null) {
            ((RuleSettingItemScopeBinding) holder.getViewBinding()).minEt.removeTextChangedListener(bVarRemove);
        }
        a aVarRemove = this.f9544f.remove(((RuleSettingItemScopeBinding) holder.getViewBinding()).maxEt);
        if (aVarRemove == null) {
            return;
        }
        ((RuleSettingItemScopeBinding) holder.getViewBinding()).maxEt.removeTextChangedListener(aVarRemove);
    }

    public RangeItemBinder(FragmentManager supportFragmentManager, boolean z, boolean z2) {
        kotlin.jvm.internal.r.e(supportFragmentManager, "supportFragmentManager");
        this.b = supportFragmentManager;
        this.c = z;
        this.f9542d = z2;
        this.f9543e = new HashMap<>();
        this.f9544f = new HashMap<>();
    }
}
