package cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder;

import android.annotation.SuppressLint;
import android.view.View;
import android.widget.CheckBox;
import android.widget.RadioGroup;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.Relation;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.GearVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.NewCollectItemGearBinding;
import cn.mucang.android.jiakaoyi.teachingk2.p0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0017¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/GearBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemGearBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GearBinder extends ViewBindingBinder<GearVariable, NewCollectItemGearBinding> {

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6700a;

        static {
            int[] iArr = new int[Relation.values().length];
            iArr[Relation.Equal.ordinal()] = 1;
            f6700a = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(GearVariable item, ViewBindingHolder holder, View view) {
        r.e(item, "$item");
        r.e(holder, "$holder");
        e eVarT = d.t();
        r.d(eVarT, "signal()");
        if (item.gear != eVarT.d().m.gear) {
            item.gear = eVarT.d().m.gear;
            ((NewCollectItemGearBinding) holder.getViewBinding()).gearTv.setText(r.m("挡位：", Gear.parse(item.gear).gearName));
            p0.a();
        }
    }

    @Override // com.drakeet.multitype.c
    @SuppressLint({"SetTextI18n"})
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<NewCollectItemGearBinding> holder, final GearVariable item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((NewCollectItemGearBinding) holder.getViewBinding()).select.setOnCheckedChangeListener(null);
        ((NewCollectItemGearBinding) holder.getViewBinding()).radioGroup.setOnCheckedChangeListener(null);
        ((NewCollectItemGearBinding) holder.getViewBinding()).select.setChecked(item.enable);
        CheckBox checkBox = ((NewCollectItemGearBinding) holder.getViewBinding()).select;
        r.d(checkBox, "holder.viewBinding.select");
        p0.i(checkBox, new Function1<Boolean, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.GearBinder$onBindViewHolder$1
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
        Relation relation = item.mode;
        if ((relation == null ? -1 : a.f6700a[relation.ordinal()]) == 1) {
            ((NewCollectItemGearBinding) holder.getViewBinding()).radioGroup.check(R.id.equalRb);
        } else {
            ((NewCollectItemGearBinding) holder.getViewBinding()).radioGroup.check(R.id.notEqualRb);
        }
        RadioGroup radioGroup = ((NewCollectItemGearBinding) holder.getViewBinding()).radioGroup;
        r.d(radioGroup, "holder.viewBinding.radioGroup");
        p0.j(radioGroup, new Function1<Integer, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.GearBinder$onBindViewHolder$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(Integer num) {
                invoke(num.intValue());
                return v.f15822a;
            }

            public final void invoke(int i) {
                if (i == R.id.equalRb) {
                    item.mode = Relation.Equal;
                } else {
                    item.mode = Relation.NotEqual;
                }
            }
        });
        ((NewCollectItemGearBinding) holder.getViewBinding()).gearTv.setText(r.m("挡位：", Gear.parse(item.gear).gearName));
        ((NewCollectItemGearBinding) holder.getViewBinding()).refresh.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GearBinder.p(item, holder, view);
            }
        });
    }
}
