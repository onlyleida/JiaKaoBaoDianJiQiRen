package cn.mucang.android.jiakaoyi.teachingk2.safe.ui.binder;

import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemSafeMenuBinding;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeMenuModel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.binder.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u001e\u0010\n\u001a\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\r\u001a\u00020\u0002H\u0016R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/SafeMenuItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeMenuBinding;", "onClick", "Lkotlin/Function1;", "", "(Lkotlin/jvm/functions/Function1;)V", "getOnClick", "()Lkotlin/jvm/functions/Function1;", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SafeMenuItemBinder extends ViewBindingBinder<SafeMenuModel, ItemSafeMenuBinding> {
    private final Function1<SafeMenuModel, v> b;

    /* JADX WARN: Multi-variable type inference failed */
    public SafeMenuItemBinder(Function1<? super SafeMenuModel, v> onClick) {
        r.e(onClick, "onClick");
        this.b = onClick;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(SafeMenuItemBinder this$0, SafeMenuModel item, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        this$0.n().invoke(item);
    }

    public final Function1<SafeMenuModel, v> n() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<ItemSafeMenuBinding> holder, final SafeMenuModel item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((ItemSafeMenuBinding) holder.getViewBinding()).menuTv.setText(item.getText());
        ((ItemSafeMenuBinding) holder.getViewBinding()).menuTv.setSelected(item.getSelected());
        ((ItemSafeMenuBinding) holder.getViewBinding()).menuTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.binder.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SafeMenuItemBinder.q(this.f7853a, item, view);
            }
        });
    }
}
