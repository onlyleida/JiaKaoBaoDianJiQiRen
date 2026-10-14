package cn.mucang.android.jiakaoyi.k3setting.teach;

import android.view.View;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.k3setting.databinding.TeachSpinnerItemBinding;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.teach.x, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001e\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\r\u001a\u00020\u0002H\u0016R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/teach/StepSelectItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/TeachSpinnerItemBinding;", "itemClick", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "(Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;)V", "getItemClick", "()Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class StepSelectItemBinder extends ViewBindingBinder<Step, TeachSpinnerItemBinding> {
    private final cn.mucang.android.jiakaoyi.framework.h.b<Step> b;

    public StepSelectItemBinder(cn.mucang.android.jiakaoyi.framework.h.b<Step> itemClick) {
        kotlin.jvm.internal.r.e(itemClick, "itemClick");
        this.b = itemClick;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(StepSelectItemBinder this$0, Step item, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        this$0.n().callback(item);
    }

    public final cn.mucang.android.jiakaoyi.framework.h.b<Step> n() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<TeachSpinnerItemBinding> holder, final Step item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        ((TeachSpinnerItemBinding) holder.getViewBinding()).text1.setText(item.zhStepName);
        ((TeachSpinnerItemBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StepSelectItemBinder.q(this.f4689a, item, view);
            }
        });
    }
}
