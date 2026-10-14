package cn.mucang.android.jiakaoyi.teachingk2.collect.render.error;

import android.widget.CheckBox;
import android.widget.RadioGroup;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TurnHeadVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.CollectErrorTurnBinding;
import cn.mucang.android.jiakaoyi.teachingk2.p0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/TurnHeadBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorTurnBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TurnHeadBinder extends ViewBindingBinder<TurnHeadVariable, CollectErrorTurnBinding> {
    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<CollectErrorTurnBinding> holder, final TurnHeadVariable item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((CollectErrorTurnBinding) holder.getViewBinding()).selectCb.setOnCheckedChangeListener(null);
        ((CollectErrorTurnBinding) holder.getViewBinding()).turnRg.setOnCheckedChangeListener(null);
        ((CollectErrorTurnBinding) holder.getViewBinding()).selectCb.setChecked(item.enable);
        CheckBox checkBox = ((CollectErrorTurnBinding) holder.getViewBinding()).selectCb;
        r.d(checkBox, "holder.viewBinding.selectCb");
        p0.i(checkBox, new Function1<Boolean, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.TurnHeadBinder$onBindViewHolder$1
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
        int i = item.headType;
        if (i == 0) {
            ((CollectErrorTurnBinding) holder.getViewBinding()).turnRg.check(R.id.noRb);
        } else if (i == 1) {
            ((CollectErrorTurnBinding) holder.getViewBinding()).turnRg.check(R.id.leftRb);
        } else if (i == 2) {
            ((CollectErrorTurnBinding) holder.getViewBinding()).turnRg.check(R.id.rightRb);
        }
        RadioGroup radioGroup = ((CollectErrorTurnBinding) holder.getViewBinding()).turnRg;
        r.d(radioGroup, "holder.viewBinding.turnRg");
        p0.j(radioGroup, new Function1<Integer, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.TurnHeadBinder$onBindViewHolder$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(Integer num) {
                invoke(num.intValue());
                return v.f15822a;
            }

            public final void invoke(int i2) {
                if (i2 == R.id.noRb) {
                    item.headType = 0;
                } else if (i2 == R.id.leftRb) {
                    item.headType = 1;
                } else if (i2 == R.id.rightRb) {
                    item.headType = 2;
                }
            }
        });
    }
}
