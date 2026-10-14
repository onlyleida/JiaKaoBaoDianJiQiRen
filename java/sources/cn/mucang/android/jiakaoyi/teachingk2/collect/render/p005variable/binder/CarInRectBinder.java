package cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder;

import android.widget.CheckBox;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachModelEditor;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarInRectVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.NewCollectItemSingleBinding;
import cn.mucang.android.jiakaoyi.teachingk2.p0;
import cn.mucang.sundial.library.activity.InputIdCardActivity;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\bJ\u001e\u0010\u000b\u001a\u00020\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarInRectBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectVariable;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemSingleBinding;", InputIdCardActivity.DELETE, "Lkotlin/Function1;", "", "", "(Lkotlin/jvm/functions/Function1;)V", "getDelete", "()Lkotlin/jvm/functions/Function1;", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarInRectBinder extends ViewBindingBinder<CarInRectVariable, NewCollectItemSingleBinding> {
    private final Function1<Object, v> b;

    public CarInRectBinder(Function1<Object, v> delete) {
        r.e(delete, "delete");
        this.b = delete;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<NewCollectItemSingleBinding> holder, final CarInRectVariable item) {
        r.e(holder, "holder");
        r.e(item, "item");
        if (TeachModelEditor.l()) {
            ((NewCollectItemSingleBinding) holder.getViewBinding()).deleteIv.setVisibility(8);
            ((NewCollectItemSingleBinding) holder.getViewBinding()).select.setVisibility(0);
        } else {
            ((NewCollectItemSingleBinding) holder.getViewBinding()).deleteIv.setVisibility(0);
            ((NewCollectItemSingleBinding) holder.getViewBinding()).select.setVisibility(8);
        }
        p0.g(holder, "车身完全在" + item.point1Index + '-' + item.point2Index + '-' + item.point3Index + '-' + item.point4Index + "区域内", this.b, item);
        ((NewCollectItemSingleBinding) holder.getViewBinding()).select.setOnCheckedChangeListener(null);
        ((NewCollectItemSingleBinding) holder.getViewBinding()).select.setChecked(item.enable);
        CheckBox checkBox = ((NewCollectItemSingleBinding) holder.getViewBinding()).select;
        r.d(checkBox, "holder.viewBinding.select");
        p0.i(checkBox, new Function1<Boolean, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.CarInRectBinder$onBindViewHolder$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return v.f15822a;
            }

            public final void invoke(boolean z) {
                item.enable = z;
            }
        });
    }
}
