package cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder;

import android.widget.CheckBox;
import android.widget.RadioGroup;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.DirectionVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.NewCollectItemDirectionBinding;
import cn.mucang.android.jiakaoyi.teachingk2.p0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/DirectionBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDirectionBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DirectionBinder extends ViewBindingBinder<DirectionVariable, NewCollectItemDirectionBinding> {
    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<NewCollectItemDirectionBinding> holder, final DirectionVariable item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((NewCollectItemDirectionBinding) holder.getViewBinding()).select.setOnCheckedChangeListener(null);
        ((NewCollectItemDirectionBinding) holder.getViewBinding()).radioGroup.setOnCheckedChangeListener(null);
        ((NewCollectItemDirectionBinding) holder.getViewBinding()).select.setChecked(item.enable);
        CheckBox checkBox = ((NewCollectItemDirectionBinding) holder.getViewBinding()).select;
        r.d(checkBox, "holder.viewBinding.select");
        p0.i(checkBox, new Function1<Boolean, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.DirectionBinder$onBindViewHolder$1
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
        int i = item.direction;
        if (i == CarModel.Direction.Forward.direction) {
            ((NewCollectItemDirectionBinding) holder.getViewBinding()).radioGroup.check(R.id.forwardRb);
        } else if (i == CarModel.Direction.Stop.direction) {
            ((NewCollectItemDirectionBinding) holder.getViewBinding()).radioGroup.check(R.id.stopRb);
        } else {
            ((NewCollectItemDirectionBinding) holder.getViewBinding()).radioGroup.check(R.id.backRb);
        }
        RadioGroup radioGroup = ((NewCollectItemDirectionBinding) holder.getViewBinding()).radioGroup;
        r.d(radioGroup, "holder.viewBinding.radioGroup");
        p0.j(radioGroup, new Function1<Integer, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.DirectionBinder$onBindViewHolder$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(Integer num) {
                invoke(num.intValue());
                return v.f15822a;
            }

            public final void invoke(int i2) {
                if (i2 == R.id.forwardRb) {
                    item.direction = CarModel.Direction.Forward.direction;
                } else if (i2 == R.id.stopRb) {
                    item.direction = CarModel.Direction.Stop.direction;
                } else if (i2 == R.id.backRb) {
                    item.direction = CarModel.Direction.Back.direction;
                }
            }
        });
    }
}
