package cn.mucang.android.jiakaoyi.teachingk2.safe.ui.binder;

import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemSafeCmdBinding;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCmdModel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.binder.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/SafeCmdItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeCmdBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SafeCmdItemBinder extends ViewBindingBinder<SafeCmdModel, ItemSafeCmdBinding> {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(SafeCmdModel item, View view) {
        r.e(item, "$item");
        Function0<v> btnClick = item.getBtnClick();
        if (btnClick == null) {
            return;
        }
        btnClick.invoke();
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<ItemSafeCmdBinding> holder, final SafeCmdModel item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((ItemSafeCmdBinding) holder.getViewBinding()).text.setCompoundDrawablesWithIntrinsicBounds(item.getResId(), 0, 0, 0);
        ((ItemSafeCmdBinding) holder.getViewBinding()).text.setText(item.getText());
        ((ItemSafeCmdBinding) holder.getViewBinding()).btn.setText(item.getBtn());
        ((ItemSafeCmdBinding) holder.getViewBinding()).btn.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.binder.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SafeCmdItemBinder.p(item, view);
            }
        });
    }
}
