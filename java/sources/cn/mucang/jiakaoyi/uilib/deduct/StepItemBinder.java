package cn.mucang.jiakaoyi.uilib.deduct;

import android.content.ComponentCallbacks2;
import android.view.View;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import androidx.lifecycle.o0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.jiakaoyi.uilib.model.StepItem;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.DeductSettingItemStepBinding;
import java.util.Objects;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.deduct.c0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/deduct/StepItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/StepItem;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingItemStepBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class StepItemBinder extends ViewBindingBinder<StepItem, DeductSettingItemStepBinding> {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(StepItem item, View view) {
        kotlin.jvm.internal.r.e(item, "$item");
        ComponentCallbacks2 componentCallbacks2A = ActivityUtils.a(view.getContext());
        Objects.requireNonNull(componentCallbacks2A, "null cannot be cast to non-null type androidx.lifecycle.ViewModelStoreOwner");
        j0 j0VarA = new m0((o0) componentCallbacks2A).a(DeductSettingViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(\n     …ingViewModel::class.java)");
        ((DeductSettingViewModel) j0VarA).q(item.getStep());
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<DeductSettingItemStepBinding> holder, final StepItem item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        ((DeductSettingItemStepBinding) holder.getViewBinding()).stepName.setText(item.getStep().zhStepName);
        ((DeductSettingItemStepBinding) holder.getViewBinding()).stepName.setTextColor(item.getHasData() ? MucangConfig.getContext().getResources().getColor(R.color.color_008aff) : MucangConfig.getContext().getResources().getColor(R.color.color_008aff_ddd));
        ((DeductSettingItemStepBinding) holder.getViewBinding()).stepName.setSelected(item.getIsSelect());
        ((DeductSettingItemStepBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StepItemBinder.p(item, view);
            }
        });
    }
}
