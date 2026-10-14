package cn.mucang.sundial.library.binder;

import android.text.InputFilter;
import android.widget.EditText;
import android.widget.TextView;
import cn.mucang.sundial.library.databinding.TtViewRegisterItemBinding;
import cn.mucang.sundial.library.entity.RegisterInfoItem;
import cn.mucang.sundial.library.widget.ViewBindingBinder;
import cn.mucang.sundial.library.widget.ViewBindingHolder;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ%\u0010\b\u001a\u00020\u00072\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcn/mucang/sundial/library/binder/RegisterItemBinder;", "Lcn/mucang/sundial/library/widget/ViewBindingBinder;", "Lcn/mucang/sundial/library/entity/RegisterInfoItem;", "Lcn/mucang/sundial/library/databinding/TtViewRegisterItemBinding;", "Lcn/mucang/sundial/library/widget/ViewBindingHolder;", "holder", "item", "Lkotlin/v;", "onBindViewHolder", "(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/library/entity/RegisterInfoItem;)V", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class RegisterItemBinder extends ViewBindingBinder<RegisterInfoItem, TtViewRegisterItemBinding> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // me.drakeet.multitype.b
    public void onBindViewHolder(ViewBindingHolder<TtViewRegisterItemBinding> holder, RegisterInfoItem item) {
        List arrayList;
        r.e(holder, "holder");
        r.e(item, "item");
        TtViewRegisterItemBinding ttViewRegisterItemBinding = (TtViewRegisterItemBinding) holder.getViewBinding();
        EditText content = ttViewRegisterItemBinding.content;
        r.d(content, "content");
        InputFilter[] filters = content.getFilters();
        if (filters == null || (arrayList = ArraysKt___ArraysKt.q0(filters)) == null) {
            arrayList = new ArrayList();
        }
        z.F(arrayList, new Function1<InputFilter, Boolean>() { // from class: cn.mucang.sundial.library.binder.RegisterItemBinder$onBindViewHolder$1$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(InputFilter inputFilter) {
                return Boolean.valueOf(invoke2(inputFilter));
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final boolean invoke2(InputFilter it) {
                r.e(it, "it");
                return it instanceof InputFilter.LengthFilter;
            }
        });
        if (item.getMaxLength() > 0) {
            arrayList.add(new InputFilter.LengthFilter(item.getMaxLength()));
        }
        EditText content2 = ttViewRegisterItemBinding.content;
        r.d(content2, "content");
        Object[] array = arrayList.toArray(new InputFilter[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        content2.setFilters((InputFilter[]) array);
        TextView label = ttViewRegisterItemBinding.label;
        r.d(label, "label");
        label.setText(item.getLabel());
        ttViewRegisterItemBinding.content.setText(item.getInput());
    }
}
