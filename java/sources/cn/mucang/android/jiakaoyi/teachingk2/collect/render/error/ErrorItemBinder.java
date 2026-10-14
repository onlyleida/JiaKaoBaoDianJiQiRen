package cn.mucang.android.jiakaoyi.teachingk2.collect.render.error;

import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import cn.mucang.android.core.webview.MenuOptions;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.teachingk2.data.ErrorModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.CollectErrorItemBinding;
import cn.mucang.android.jiakaoyi.teachingk2.p0;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001b\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u001e\u0010\n\u001a\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\r\u001a\u00020\u0002H\u0016J\u0016\u0010\u000e\u001a\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\fH\u0016J\u001e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00022\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\fH\u0002R\u001f\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/ErrorItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;", MenuOptions.REFRESH, "Lkotlin/Function1;", "", "(Lkotlin/jvm/functions/Function1;)V", "getRefresh", "()Lkotlin/jvm/functions/Function1;", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "onViewRecycled", "setExpand", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ErrorItemBinder extends ViewBindingBinder<ErrorModel, CollectErrorItemBinding> {
    private final Function1<ErrorModel, v> b;

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0004H\u0014J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\bH\u0014¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/collect/render/error/ErrorItemBinder$onBindViewHolder$valueWatcher$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/VariableWatcher;", "Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;", "onEmpty", "", "textChanged", "v", "input", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b<VoiceModel> {
        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b
        protected void a() {
            ((VoiceModel) this.f6658a).voice = "";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(VoiceModel v, String input) {
            r.e(v, "v");
            r.e(input, "input");
            v.voice = input;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ErrorItemBinder(Function1<? super ErrorModel, v> refresh) {
        r.e(refresh, "refresh");
        this.b = refresh;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(ErrorModel item, ErrorItemBinder this$0, ViewBindingHolder holder, View view) {
        r.e(item, "$item");
        r.e(this$0, "this$0");
        r.e(holder, "$holder");
        item.expand = !item.expand;
        this$0.u(item, holder);
        this$0.n().invoke(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(ErrorItemBinder this$0, ErrorModel item, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        this$0.n().invoke(item);
    }

    private final void u(ErrorModel errorModel, ViewBindingHolder<CollectErrorItemBinding> viewBindingHolder) {
        if (errorModel.expand) {
            ((CollectErrorItemBinding) viewBindingHolder.getViewBinding()).title.setCompoundDrawablesWithIntrinsicBounds(R.drawable.collect_ic_expend, 0, 0, 0);
            ((CollectErrorItemBinding) viewBindingHolder.getViewBinding()).select.getRoot().setVisibility(0);
            ((CollectErrorItemBinding) viewBindingHolder.getViewBinding()).correct.getRoot().setVisibility(0);
        } else {
            ((CollectErrorItemBinding) viewBindingHolder.getViewBinding()).title.setCompoundDrawablesWithIntrinsicBounds(R.drawable.collect_ic_close, 0, 0, 0);
            ((CollectErrorItemBinding) viewBindingHolder.getViewBinding()).select.getRoot().setVisibility(8);
            ((CollectErrorItemBinding) viewBindingHolder.getViewBinding()).correct.getRoot().setVisibility(8);
        }
    }

    public final Function1<ErrorModel, v> n() {
        return this.b;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel] */
    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<CollectErrorItemBinding> holder, final ErrorModel item) {
        r.e(holder, "holder");
        r.e(item, "item");
        a aVar = new a();
        FormModel formModel = item.errorForm;
        Objects.requireNonNull(formModel, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel");
        aVar.f6658a = (VoiceModel) formModel;
        EditText editText = ((CollectErrorItemBinding) holder.getViewBinding()).valueEt;
        Object tag = ((CollectErrorItemBinding) holder.getViewBinding()).valueEt.getTag();
        editText.removeTextChangedListener(tag instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b ? (cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b) tag : null);
        EditText editText2 = ((CollectErrorItemBinding) holder.getViewBinding()).valueEt;
        FormModel formModel2 = item.errorForm;
        Objects.requireNonNull(formModel2, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel");
        editText2.setText(((VoiceModel) formModel2).voice);
        ((CollectErrorItemBinding) holder.getViewBinding()).valueEt.addTextChangedListener(aVar);
        ((CollectErrorItemBinding) holder.getViewBinding()).valueEt.setTag(aVar);
        ((CollectErrorItemBinding) holder.getViewBinding()).select.titleTv.setText("是否连续检测");
        ((CollectErrorItemBinding) holder.getViewBinding()).select.selectCb.setOnCheckedChangeListener(null);
        ((CollectErrorItemBinding) holder.getViewBinding()).select.selectCb.setChecked(item.checkType == 1);
        CheckBox checkBox = ((CollectErrorItemBinding) holder.getViewBinding()).select.selectCb;
        r.d(checkBox, "holder.viewBinding.select.selectCb");
        p0.i(checkBox, new Function1<Boolean, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.ErrorItemBinder$onBindViewHolder$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return v.f15822a;
            }

            public final void invoke(boolean z) {
                item.checkType = z ? 1 : 0;
            }
        });
        ((CollectErrorItemBinding) holder.getViewBinding()).correct.titleTv.setText("是否检测正确操作");
        ((CollectErrorItemBinding) holder.getViewBinding()).correct.selectCb.setOnCheckedChangeListener(null);
        ((CollectErrorItemBinding) holder.getViewBinding()).correct.selectCb.setChecked(item.isRightCheck);
        CheckBox checkBox2 = ((CollectErrorItemBinding) holder.getViewBinding()).correct.selectCb;
        r.d(checkBox2, "holder.viewBinding.correct.selectCb");
        p0.i(checkBox2, new Function1<Boolean, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.ErrorItemBinder$onBindViewHolder$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return v.f15822a;
            }

            public final void invoke(boolean z) {
                item.isRightCheck = z;
            }
        });
        u(item, holder);
        ((CollectErrorItemBinding) holder.getViewBinding()).title.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ErrorItemBinder.r(item, this, holder, view);
            }
        });
        ((CollectErrorItemBinding) holder.getViewBinding()).closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ErrorItemBinder.s(this.f6603a, item, view);
            }
        });
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public void i(ViewBindingHolder<CollectErrorItemBinding> holder) {
        r.e(holder, "holder");
        super.i(holder);
        EditText editText = ((CollectErrorItemBinding) holder.getViewBinding()).valueEt;
        Object tag = ((CollectErrorItemBinding) holder.getViewBinding()).valueEt.getTag();
        editText.removeTextChangedListener(tag instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b ? (cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b) tag : null);
    }
}
