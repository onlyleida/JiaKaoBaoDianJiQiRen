package cn.mucang.jiakaoyi.uilib.ui.setting.car;

import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.signal.car.CarSelectModel;
import com.mucang.android.jiakaoyi.uilib.databinding.DeductSettingItemStepBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.car.x, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u001e\u0010\n\u001a\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\r\u001a\u00020\u0002H\u0016R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingItemStepBinding;", "changeCar", "Lkotlin/Function1;", "", "(Lkotlin/jvm/functions/Function1;)V", "getChangeCar", "()Lkotlin/jvm/functions/Function1;", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarItemBinder extends ViewBindingBinder<CarSelectModel, DeductSettingItemStepBinding> {
    private final Function1<CarSelectModel, kotlin.v> b;

    /* JADX WARN: Multi-variable type inference failed */
    public CarItemBinder(Function1<? super CarSelectModel, kotlin.v> changeCar) {
        kotlin.jvm.internal.r.e(changeCar, "changeCar");
        this.b = changeCar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(CarItemBinder this$0, CarSelectModel item, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        this$0.n().invoke(item);
    }

    public final Function1<CarSelectModel, kotlin.v> n() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<DeductSettingItemStepBinding> holder, final CarSelectModel item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        ((DeductSettingItemStepBinding) holder.getViewBinding()).stepName.setText(item.getModelName());
        ((DeductSettingItemStepBinding) holder.getViewBinding()).stepName.setSelected(item.getIsSelect());
        ((DeductSettingItemStepBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarItemBinder.q(this.f9919a, item, view);
            }
        });
    }
}
