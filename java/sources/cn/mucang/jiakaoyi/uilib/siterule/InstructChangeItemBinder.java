package cn.mucang.jiakaoyi.uilib.siterule;

import android.annotation.SuppressLint;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import cn.mucang.android.jiakaoyi.engine.model.StepAlias;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.databinding.InstructChangeItemBinding;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.siterule.f0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u001e\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0017R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeItemBinding;", "callback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "(Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;)V", "getCallback", "()Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "setCallback", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class InstructChangeItemBinder extends ViewBindingBinder<StepAlias, InstructChangeItemBinding> {
    private cn.mucang.android.jiakaoyi.framework.h.b<Boolean> b;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.siterule.f0$a */
    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J*\u0010\f\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016¨\u0006\u000e"}, d2 = {"cn/mucang/jiakaoyi/uilib/siterule/InstructChangeItemBinder$onBindViewHolder$watcher$1", "Landroid/text/TextWatcher;", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements TextWatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ StepAlias f9608a;
        final /* synthetic */ InstructChangeItemBinder b;

        a(StepAlias stepAlias, InstructChangeItemBinder instructChangeItemBinder) {
            this.f9608a = stepAlias;
            this.b = instructChangeItemBinder;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            this.f9608a.stepAliasName = s == null ? null : s.toString();
            this.b.n().callback(Boolean.TRUE);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    public InstructChangeItemBinder(cn.mucang.android.jiakaoyi.framework.h.b<Boolean> callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        this.b = callback;
    }

    public final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> n() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    @SuppressLint({"SetTextI18n"})
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<InstructChangeItemBinding> holder, StepAlias item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        a aVar = new a(item, this);
        ((InstructChangeItemBinding) holder.getViewBinding()).projectOrder.setText(kotlin.jvm.internal.r.m("项目-", item.zhName));
        EditText editText = ((InstructChangeItemBinding) holder.getViewBinding()).fileName;
        Object tag = ((InstructChangeItemBinding) holder.getViewBinding()).fileName.getTag();
        editText.removeTextChangedListener(tag instanceof TextWatcher ? (TextWatcher) tag : null);
        ((InstructChangeItemBinding) holder.getViewBinding()).fileName.setText(item.stepAliasName);
        ((InstructChangeItemBinding) holder.getViewBinding()).fileName.addTextChangedListener(aVar);
        ((InstructChangeItemBinding) holder.getViewBinding()).fileName.setTag(aVar);
    }
}
