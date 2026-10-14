package cn.mucang.android.jiakaoyi.k3setting.teach.binder;

import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.TeachData;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.k3setting.databinding.TeachSettingItemTextBinding;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.teach.z.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001aB-\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u001c\b\u0002\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007¢\u0006\u0002\u0010\nJ&\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00102\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u00162\u0006\u0010\u0017\u001a\u00020\u0002H\u0002J\u001e\u0010\u0018\u001a\u00020\t2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u00162\u0006\u0010\u0017\u001a\u00020\u0002H\u0016J\u0016\u0010\u0019\u001a\u00020\t2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u0016H\u0016R%\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\rR2\u0010\u000e\u001a&\u0012\u0004\u0012\u00020\u0010\u0012\b\u0012\u00060\u0011R\u00020\u00000\u000fj\u0012\u0012\u0004\u0012\u00020\u0010\u0012\b\u0012\u00060\u0011R\u00020\u0000`\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/teach/binder/TeachVoiceItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/TeachSettingItemTextBinding;", "isDiff", "", "deleteAction", "Lkotlin/Function2;", "", "", "(ZLkotlin/jvm/functions/Function2;)V", "getDeleteAction", "()Lkotlin/jvm/functions/Function2;", "()Z", "listenerMap", "Ljava/util/HashMap;", "Landroid/widget/EditText;", "Lcn/mucang/android/jiakaoyi/k3setting/teach/binder/TeachVoiceItemBinder$MyTextWatcher;", "Lkotlin/collections/HashMap;", "initListener", "et", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "onBindViewHolder", "onViewRecycled", "MyTextWatcher", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachVoiceItemBinder extends ViewBindingBinder<TeachData, TeachSettingItemTextBinding> {
    private final boolean b;
    private final Function2<TeachData, Integer, v> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashMap<EditText, a> f4696d;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.teach.z.g$a */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/teach/binder/TeachVoiceItemBinder$MyTextWatcher;", "Lcn/mucang/android/jiakaoyi/k3collect/listener/WrapperTextWatcher;", "(Lcn/mucang/android/jiakaoyi/k3setting/teach/binder/TeachVoiceItemBinder;)V", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/TeachSettingItemTextBinding;", "getHolder", "()Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "setHolder", "(Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;)V", "item", "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;", "getItem", "()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;", "setItem", "(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;)V", "afterTextChanged", "", "s", "Landroid/text/Editable;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private final class a extends cn.mucang.android.jiakaoyi.k3collect.h0.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TeachData f4697a;

        public a(TeachVoiceItemBinder this$0) {
            r.e(this$0, "this$0");
        }

        public final void a(ViewBindingHolder<TeachSettingItemTextBinding> viewBindingHolder) {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            TeachData teachData = this.f4697a;
            if (teachData == null) {
                return;
            }
            teachData.desc = String.valueOf(s);
        }

        public final void b(TeachData teachData) {
            this.f4697a = teachData;
        }
    }

    public /* synthetic */ TeachVoiceItemBinder(boolean z, Function2 function2, int i, o oVar) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? null : function2);
    }

    private final void o(EditText editText, ViewBindingHolder<TeachSettingItemTextBinding> viewBindingHolder, TeachData teachData) {
        a aVar = this.f4696d.get(editText);
        if (aVar == null) {
            aVar = new a(this);
            editText.addTextChangedListener(aVar);
            this.f4696d.put(editText, aVar);
        }
        aVar.a(viewBindingHolder);
        aVar.b(teachData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(TeachData item, ViewBindingHolder holder, View view) {
        r.e(item, "$item");
        r.e(holder, "$holder");
        item.order = !view.isSelected();
        ((TeachSettingItemTextBinding) holder.getViewBinding()).includeTitle.orderTv.setSelected(item.order);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(ViewBindingHolder holder, TeachVoiceItemBinder this$0, TeachData item, View view) {
        r.e(holder, "$holder");
        r.e(this$0, "this$0");
        r.e(item, "$item");
        holder.getAdapterPosition();
        Function2<TeachData, Integer, v> function2N = this$0.n();
        if (function2N == null) {
            return;
        }
        function2N.invoke(item, Integer.valueOf(holder.getAdapterPosition()));
    }

    public final Function2<TeachData, Integer, v> n() {
        return this.c;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<TeachSettingItemTextBinding> holder, final TeachData item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((TeachSettingItemTextBinding) holder.getViewBinding()).includeTitle.tvStepName.setText(item.name);
        if (this.b) {
            ((TeachSettingItemTextBinding) holder.getViewBinding()).includeStepVoice.etTeachVoice.setEnabled(false);
            ((TeachSettingItemTextBinding) holder.getViewBinding()).includeTitle.tvDelete.setVisibility(8);
        } else {
            EditText editText = ((TeachSettingItemTextBinding) holder.getViewBinding()).includeStepVoice.etTeachVoice;
            r.d(editText, "holder.viewBinding.includeStepVoice.etTeachVoice");
            o(editText, holder, item);
            ((TeachSettingItemTextBinding) holder.getViewBinding()).includeTitle.orderTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.z.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TeachVoiceItemBinder.s(item, holder, view);
                }
            });
            ((TeachSettingItemTextBinding) holder.getViewBinding()).includeTitle.tvDelete.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.z.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TeachVoiceItemBinder.t(holder, this, item, view);
                }
            });
        }
        ((TeachSettingItemTextBinding) holder.getViewBinding()).includeStepVoice.etTeachVoice.setText(item.desc);
        ((TeachSettingItemTextBinding) holder.getViewBinding()).includeTitle.orderTv.setSelected(item.order);
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public void i(ViewBindingHolder<TeachSettingItemTextBinding> holder) {
        r.e(holder, "holder");
        super.i(holder);
        a aVarRemove = this.f4696d.remove(((TeachSettingItemTextBinding) holder.getViewBinding()).includeStepVoice.etTeachVoice);
        if (aVarRemove == null) {
            return;
        }
        ((TeachSettingItemTextBinding) holder.getViewBinding()).includeStepVoice.etTeachVoice.removeTextChangedListener(aVarRemove);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TeachVoiceItemBinder(boolean z, Function2<? super TeachData, ? super Integer, v> function2) {
        this.b = z;
        this.c = function2;
        this.f4696d = new HashMap<>();
    }
}
