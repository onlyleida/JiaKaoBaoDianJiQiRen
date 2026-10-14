package cn.mucang.android.jiakaoyi.teachingk2.collect.render.error;

import android.widget.EditText;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.RepeatVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.CollectErrorItemEditBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.h, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0016\u0010\n\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\bH\u0016¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/RepeatBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/RepeatVariable;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "onViewRecycled", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RepeatBinder extends ViewBindingBinder<RepeatVariable, CollectErrorItemEditBinding> {

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.h$a */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0014¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/collect/render/error/RepeatBinder$onBindViewHolder$valueWatcher$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/VariableWatcher;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/RepeatVariable;", "textChanged", "", "v", "input", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b<RepeatVariable> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(RepeatVariable v, String input) {
            r.e(v, "v");
            r.e(input, "input");
            try {
                v.repeatTime = Long.parseLong(StringsKt__StringsKt.J0(input).toString());
            } catch (Exception unused) {
                u.h("时间解析出错");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<CollectErrorItemEditBinding> holder, RepeatVariable item) {
        r.e(holder, "holder");
        r.e(item, "item");
        a aVar = new a();
        aVar.f6658a = item;
        EditText editText = ((CollectErrorItemEditBinding) holder.getViewBinding()).valueEt;
        Object tag = ((CollectErrorItemEditBinding) holder.getViewBinding()).valueEt.getTag();
        editText.removeTextChangedListener(tag instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b ? (cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b) tag : null);
        ((CollectErrorItemEditBinding) holder.getViewBinding()).valueEt.setText(String.valueOf(item.repeatTime));
        ((CollectErrorItemEditBinding) holder.getViewBinding()).valueEt.addTextChangedListener(aVar);
        ((CollectErrorItemEditBinding) holder.getViewBinding()).valueEt.setTag(aVar);
        ((CollectErrorItemEditBinding) holder.getViewBinding()).titleTv.setText("重复播报时间间隔");
        ((CollectErrorItemEditBinding) holder.getViewBinding()).divider.setVisibility(8);
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public void i(ViewBindingHolder<CollectErrorItemEditBinding> holder) {
        r.e(holder, "holder");
        super.i(holder);
        EditText editText = ((CollectErrorItemEditBinding) holder.getViewBinding()).valueEt;
        Object tag = ((CollectErrorItemEditBinding) holder.getViewBinding()).valueEt.getTag();
        editText.removeTextChangedListener(tag instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b ? (cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b) tag : null);
    }
}
