package cn.mucang.jiakaoyi.uilib.rule;

import android.app.Activity;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.EditText;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.jiakaoyi.uilib.deduct.dialog.SelectVoiceDialog;
import cn.mucang.jiakaoyi.uilib.rule.dialog.DeductRuleDialogHelper;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.databinding.RuleSettingItemTextBinding;
import java.util.HashMap;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.l0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001aB!\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0002\u0010\tJ&\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\f2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u00152\u0006\u0010\u0016\u001a\u00020\u0002H\u0002J\u001e\u0010\u0017\u001a\u00020\u00122\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u00152\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J\u0016\u0010\u0018\u001a\u00020\u00122\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u0015H\u0016J\u0016\u0010\u0019\u001a\u00020\u00122\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u0015H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R2\u0010\n\u001a&\u0012\u0004\u0012\u00020\f\u0012\b\u0012\u00060\rR\u00020\u00000\u000bj\u0012\u0012\u0004\u0012\u00020\f\u0012\b\u0012\u00060\rR\u00020\u0000`\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/TextItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;", "supportFragmentManager", "Landroidx/fragment/app/FragmentManager;", "hideCheckDeducts", "", "isEdit", "(Landroidx/fragment/app/FragmentManager;ZZ)V", "listenerMap", "Ljava/util/HashMap;", "Landroid/widget/EditText;", "Lcn/mucang/jiakaoyi/uilib/rule/TextItemBinder$MyTextWatcher;", "Lkotlin/collections/HashMap;", "getSupportFragmentManager", "()Landroidx/fragment/app/FragmentManager;", "initListener", "", "et", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "onBindViewHolder", "onViewAttachedToWindow", "onViewRecycled", "MyTextWatcher", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TextItemBinder extends ViewBindingBinder<StringValue, RuleSettingItemTextBinding> {
    private final FragmentManager b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f9554d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashMap<EditText, a> f9555e;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.l0$a */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J*\u0010\u0014\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0017H\u0016J*\u0010\u001a\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0016R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/TextItemBinder$MyTextWatcher;", "Landroid/text/TextWatcher;", "(Lcn/mucang/jiakaoyi/uilib/rule/TextItemBinder;)V", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;", "getHolder", "()Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "setHolder", "(Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;)V", "item", "Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;", "getItem", "()Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;", "setItem", "(Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private final class a implements TextWatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ViewBindingHolder<RuleSettingItemTextBinding> f9556a;
        private StringValue b;

        public a(TextItemBinder this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
        }

        public final ViewBindingHolder<RuleSettingItemTextBinding> a() {
            return this.f9556a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v7, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r10v8, types: [T, java.lang.CharSequence, java.lang.String] */
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            RuleSettingItemTextBinding ruleSettingItemTextBinding;
            RuleSettingItemTextBinding ruleSettingItemTextBinding2;
            RuleSettingItemTextBinding ruleSettingItemTextBinding3;
            EditText editText;
            RuleSettingItemTextBinding ruleSettingItemTextBinding4;
            EditText editText2;
            RuleSettingItemTextBinding ruleSettingItemTextBinding5;
            EditText editText3;
            RuleSettingItemTextBinding ruleSettingItemTextBinding6;
            RuleSettingItemTextBinding ruleSettingItemTextBinding7;
            EditText editText4;
            RuleSettingItemTextBinding ruleSettingItemTextBinding8;
            EditText editText5;
            StringValue stringValue = this.b;
            if (stringValue != null) {
                int i = stringValue.ruleId;
                if ((212106 <= i && i <= 212110) && s != null && !cn.mucang.jiakaoyi.uilib.utils.k.a(s.toString())) {
                    cn.mucang.android.core.utils.u.h("输入不合法，挡位必须是连续的1-5内的数字");
                    if (s.toString().length() > 0) {
                        String string = s.toString();
                        int length = s.length() - 1;
                        Objects.requireNonNull(string, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring = string.substring(0, length);
                        kotlin.jvm.internal.r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        ViewBindingHolder<RuleSettingItemTextBinding> viewBindingHolderA = a();
                        if (viewBindingHolderA != null && (ruleSettingItemTextBinding8 = (RuleSettingItemTextBinding) viewBindingHolderA.getViewBinding()) != null && (editText5 = ruleSettingItemTextBinding8.valueEt) != null) {
                            editText5.setText(strSubstring);
                        }
                        ViewBindingHolder<RuleSettingItemTextBinding> viewBindingHolderA2 = a();
                        if (viewBindingHolderA2 != null && (ruleSettingItemTextBinding7 = (RuleSettingItemTextBinding) viewBindingHolderA2.getViewBinding()) != null && (editText4 = ruleSettingItemTextBinding7.valueEt) != null) {
                            editText4.setSelection(strSubstring.length());
                        }
                    } else {
                        ViewBindingHolder<RuleSettingItemTextBinding> viewBindingHolderA3 = a();
                        if (viewBindingHolderA3 != null && (ruleSettingItemTextBinding5 = (RuleSettingItemTextBinding) viewBindingHolderA3.getViewBinding()) != null && (editText3 = ruleSettingItemTextBinding5.valueEt) != null) {
                            editText3.setText("");
                        }
                    }
                    ViewBindingHolder<RuleSettingItemTextBinding> viewBindingHolderA4 = a();
                    EditText editText6 = (viewBindingHolderA4 == null || (ruleSettingItemTextBinding6 = (RuleSettingItemTextBinding) viewBindingHolderA4.getViewBinding()) == null) ? null : ruleSettingItemTextBinding6.valueEt;
                    if (editText6 == null) {
                        return;
                    }
                    StringValue b = getB();
                    editText6.setSelected(TextUtils.isEmpty(b != null ? (String) b.value : null));
                    return;
                }
            }
            if (!StringsKt__StringsKt.G(String.valueOf(s), "%_%", false, 2, null)) {
                StringValue stringValue2 = this.b;
                if (stringValue2 != null) {
                    stringValue2.value = String.valueOf(s);
                }
                ViewBindingHolder<RuleSettingItemTextBinding> viewBindingHolder = this.f9556a;
                EditText editText7 = (viewBindingHolder == null || (ruleSettingItemTextBinding = (RuleSettingItemTextBinding) viewBindingHolder.getViewBinding()) == null) ? null : ruleSettingItemTextBinding.valueEt;
                if (editText7 == null) {
                    return;
                }
                StringValue stringValue3 = this.b;
                editText7.setSelected(TextUtils.isEmpty(stringValue3 != null ? (String) stringValue3.value : null));
                return;
            }
            cn.mucang.android.core.utils.u.h("输入不合法");
            ?? X = kotlin.text.t.x(String.valueOf(s), "%_%", "", false, 4, null);
            ViewBindingHolder<RuleSettingItemTextBinding> viewBindingHolder2 = this.f9556a;
            if (viewBindingHolder2 != null && (ruleSettingItemTextBinding4 = (RuleSettingItemTextBinding) viewBindingHolder2.getViewBinding()) != null && (editText2 = ruleSettingItemTextBinding4.valueEt) != 0) {
                editText2.setText((CharSequence) X);
            }
            ViewBindingHolder<RuleSettingItemTextBinding> viewBindingHolder3 = this.f9556a;
            if (viewBindingHolder3 != null && (ruleSettingItemTextBinding3 = (RuleSettingItemTextBinding) viewBindingHolder3.getViewBinding()) != null && (editText = ruleSettingItemTextBinding3.valueEt) != null) {
                editText.setSelection(X.length());
            }
            StringValue stringValue4 = this.b;
            if (stringValue4 != null) {
                stringValue4.value = X;
            }
            ViewBindingHolder<RuleSettingItemTextBinding> viewBindingHolder4 = this.f9556a;
            EditText editText8 = (viewBindingHolder4 == null || (ruleSettingItemTextBinding2 = (RuleSettingItemTextBinding) viewBindingHolder4.getViewBinding()) == null) ? null : ruleSettingItemTextBinding2.valueEt;
            if (editText8 == null) {
                return;
            }
            StringValue stringValue5 = this.b;
            editText8.setSelected(TextUtils.isEmpty(stringValue5 != null ? (String) stringValue5.value : null));
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final StringValue getB() {
            return this.b;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        public final void c(ViewBindingHolder<RuleSettingItemTextBinding> viewBindingHolder) {
            this.f9556a = viewBindingHolder;
        }

        public final void d(StringValue stringValue) {
            this.b = stringValue;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    public /* synthetic */ TextItemBinder(FragmentManager fragmentManager, boolean z, boolean z2, int i, kotlin.jvm.internal.o oVar) {
        this(fragmentManager, (i & 2) != 0 ? false : z, (i & 4) != 0 ? true : z2);
    }

    private final void o(EditText editText, ViewBindingHolder<RuleSettingItemTextBinding> viewBindingHolder, StringValue stringValue) {
        a aVar = this.f9555e.get(editText);
        if (aVar == null) {
            aVar = new a(this);
            editText.addTextChangedListener(aVar);
            this.f9555e.put(editText, aVar);
        }
        aVar.c(viewBindingHolder);
        aVar.d(stringValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(StringValue item, View view) {
        kotlin.jvm.internal.r.e(item, "$item");
        Activity activityA = ActivityUtils.a(view.getContext());
        Objects.requireNonNull(activityA, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        String strD = cn.mucang.android.jiakaoyi.framework.tts.voice.l.d(item.ruleId);
        kotlin.jvm.internal.r.d(strD, "ruleKey(item.ruleId)");
        new SelectVoiceDialog(strD).show(((androidx.appcompat.app.d) activityA).getSupportFragmentManager(), "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(StringValue item, TextItemBinder this$0, View view) {
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
    public void c(ViewBindingHolder<RuleSettingItemTextBinding> holder, final StringValue item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        EditText editText = ((RuleSettingItemTextBinding) holder.getViewBinding()).valueEt;
        kotlin.jvm.internal.r.d(editText, "holder.viewBinding.valueEt");
        o(editText, holder, item);
        ((RuleSettingItemTextBinding) holder.getViewBinding()).descTv.setText(item.name);
        ((RuleSettingItemTextBinding) holder.getViewBinding()).valueEt.setText((CharSequence) item.value);
        ((RuleSettingItemTextBinding) holder.getViewBinding()).voice.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextItemBinder.s(item, view);
            }
        });
        ((RuleSettingItemTextBinding) holder.getViewBinding()).valueEt.setEnabled(this.f9554d);
        String str = item.deductIds;
        if (str == null || str.length() == 0) {
            ((RuleSettingItemTextBinding) holder.getViewBinding()).checkDeducts.setVisibility(8);
        } else if (this.c) {
            ((RuleSettingItemTextBinding) holder.getViewBinding()).checkDeducts.setVisibility(8);
        } else {
            ((RuleSettingItemTextBinding) holder.getViewBinding()).checkDeducts.setVisibility(0);
            ((RuleSettingItemTextBinding) holder.getViewBinding()).checkDeducts.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.y
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TextItemBinder.t(item, this, view);
                }
            });
        }
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public void g(ViewBindingHolder<RuleSettingItemTextBinding> holder) {
        kotlin.jvm.internal.r.e(holder, "holder");
        super.g(holder);
        ViewParent parent = holder.itemView.getParent();
        Objects.requireNonNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
        int measuredWidth = ((ViewGroup) parent).getMeasuredWidth();
        if (measuredWidth > 0) {
            ((RuleSettingItemTextBinding) holder.getViewBinding()).descTv.setMaxWidth((int) (((double) measuredWidth) * 0.65d));
        }
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public void i(ViewBindingHolder<RuleSettingItemTextBinding> holder) {
        kotlin.jvm.internal.r.e(holder, "holder");
        super.i(holder);
        a aVarRemove = this.f9555e.remove(((RuleSettingItemTextBinding) holder.getViewBinding()).valueEt);
        if (aVarRemove == null) {
            return;
        }
        ((RuleSettingItemTextBinding) holder.getViewBinding()).valueEt.removeTextChangedListener(aVarRemove);
    }

    public TextItemBinder(FragmentManager supportFragmentManager, boolean z, boolean z2) {
        kotlin.jvm.internal.r.e(supportFragmentManager, "supportFragmentManager");
        this.b = supportFragmentManager;
        this.c = z;
        this.f9554d = z2;
        this.f9555e = new HashMap<>();
    }
}
