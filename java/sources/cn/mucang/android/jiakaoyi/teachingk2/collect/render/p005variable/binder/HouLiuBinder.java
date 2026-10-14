package cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder;

import android.widget.CheckBox;
import android.widget.RadioGroup;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.Relation;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.specific.CarHouLiuVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.NewCollectItemHouliuBinding;
import cn.mucang.android.jiakaoyi.teachingk2.p0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000)\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b2\u0006\u0010\f\u001a\u00020\u0002H\u0016R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;", "()V", "watcher", "cn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder$watcher$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder$watcher$1;", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HouLiuBinder extends ViewBindingBinder<CarHouLiuVariable, NewCollectItemHouliuBinding> {
    private final a b = new a();

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder$watcher$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/VariableWatcher;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;", "textChanged", "", "v", "input", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends b<CarHouLiuVariable> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(CarHouLiuVariable carHouLiuVariable, String str) {
            Float fValueOf;
            if (carHouLiuVariable != null) {
                if (str == null) {
                    fValueOf = null;
                } else {
                    try {
                        fValueOf = Float.valueOf(Float.parseFloat(str));
                    } catch (Exception unused) {
                        u.h("设置失败，请输入数字");
                        return;
                    }
                }
                carHouLiuVariable.distance = fValueOf.floatValue();
            }
            p0.a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<NewCollectItemHouliuBinding> holder, final CarHouLiuVariable item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((NewCollectItemHouliuBinding) holder.getViewBinding()).select.setOnCheckedChangeListener(null);
        ((NewCollectItemHouliuBinding) holder.getViewBinding()).radioGroup.setOnCheckedChangeListener(null);
        ((NewCollectItemHouliuBinding) holder.getViewBinding()).houliuEt.removeTextChangedListener(this.b);
        ((NewCollectItemHouliuBinding) holder.getViewBinding()).select.setChecked(item.enable);
        CheckBox checkBox = (CheckBox) holder.itemView.findViewById(R.id.select);
        r.d(checkBox, "holder.itemView.select");
        p0.i(checkBox, new Function1<Boolean, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.HouLiuBinder$onBindViewHolder$1
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
        this.b.f6658a = item;
        ((NewCollectItemHouliuBinding) holder.getViewBinding()).houliuEt.setText(String.valueOf((int) item.distance));
        ((NewCollectItemHouliuBinding) holder.getViewBinding()).houliuEt.addTextChangedListener(this.b);
        if (item.mode == Relation.BigThan) {
            ((NewCollectItemHouliuBinding) holder.getViewBinding()).radioGroup.check(R.id.bigRb);
        } else {
            ((NewCollectItemHouliuBinding) holder.getViewBinding()).radioGroup.check(R.id.smallRb);
        }
        RadioGroup radioGroup = ((NewCollectItemHouliuBinding) holder.getViewBinding()).radioGroup;
        r.d(radioGroup, "holder.viewBinding.radioGroup");
        p0.j(radioGroup, new Function1<Integer, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.HouLiuBinder$onBindViewHolder$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(Integer num) {
                invoke(num.intValue());
                return v.f15822a;
            }

            public final void invoke(int i) {
                if (i == R.id.bigRb) {
                    item.mode = Relation.BigThan;
                } else if (i == R.id.smallRb) {
                    item.mode = Relation.SmallThan;
                }
            }
        });
    }
}
