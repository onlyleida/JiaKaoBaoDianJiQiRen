package cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder;

import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.NewCollectItemAddBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.o, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001b\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\bJ\u001e\u0010\u000b\u001a\u00020\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016R\u001f\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/AddBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/AddModel;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAddBinding;", "addItem", "Lkotlin/Function1;", "", "", "(Lkotlin/jvm/functions/Function1;)V", "getAddItem", "()Lkotlin/jvm/functions/Function1;", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AddBinder extends ViewBindingBinder<a, NewCollectItemAddBinding> {
    private final Function1<Object, v> b;

    public AddBinder(Function1<Object, v> addItem) {
        r.e(addItem, "addItem");
        this.b = addItem;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(AddBinder this$0, a item, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        this$0.n().invoke(item.f6579a);
    }

    public final Function1<Object, v> n() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<NewCollectItemAddBinding> holder, final a item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((NewCollectItemAddBinding) holder.getViewBinding()).addIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddBinder.q(this.f6704a, item, view);
            }
        });
        if (item.f6579a != null) {
            ((NewCollectItemAddBinding) holder.getViewBinding()).divider.setVisibility(8);
        } else {
            ((NewCollectItemAddBinding) holder.getViewBinding()).divider.setVisibility(0);
        }
    }
}
