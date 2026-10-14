package cn.mucang.android.jiakaoyi.teachingk2.collect.render.error;

import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioGroup;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.WheelDegreeVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.CollectErrorWheelBinding;
import cn.mucang.android.jiakaoyi.teachingk2.p0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0016\u0010\n\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\bH\u0016¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/WheelDegreeBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDegreeVariable;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "onViewRecycled", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class WheelDegreeBinder extends ViewBindingBinder<WheelDegreeVariable, CollectErrorWheelBinding> {

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0014¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/collect/render/error/WheelDegreeBinder$onBindViewHolder$angleWatcher$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/VariableWatcher;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDegreeVariable;", "textChanged", "", "v", "input", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b<WheelDegreeVariable> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(WheelDegreeVariable v, String input) {
            r.e(v, "v");
            r.e(input, "input");
            try {
                v.degree = Integer.parseInt(StringsKt__StringsKt.J0(input).toString());
            } catch (Exception unused) {
                u.h("角度解析出错");
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0014¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/collect/render/error/WheelDegreeBinder$onBindViewHolder$radiusWatcher$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/VariableWatcher;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDegreeVariable;", "textChanged", "", "v", "input", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b<WheelDegreeVariable> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(WheelDegreeVariable v, String input) {
            r.e(v, "v");
            r.e(input, "input");
            try {
                v.radius = Integer.parseInt(StringsKt__StringsKt.J0(input).toString());
            } catch (Exception unused) {
                u.h("范围解析出错");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<CollectErrorWheelBinding> holder, final WheelDegreeVariable item) {
        r.e(holder, "holder");
        r.e(item, "item");
        a aVar = new a();
        b bVar = new b();
        aVar.f6658a = item;
        bVar.f6658a = item;
        EditText editText = ((CollectErrorWheelBinding) holder.getViewBinding()).angleEt;
        Object tag = ((CollectErrorWheelBinding) holder.getViewBinding()).angleEt.getTag();
        editText.removeTextChangedListener(tag instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b ? (cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b) tag : null);
        EditText editText2 = ((CollectErrorWheelBinding) holder.getViewBinding()).radiusEt;
        Object tag2 = ((CollectErrorWheelBinding) holder.getViewBinding()).radiusEt.getTag();
        editText2.removeTextChangedListener(tag2 instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b ? (cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b) tag2 : null);
        ((CollectErrorWheelBinding) holder.getViewBinding()).angleEt.setText(String.valueOf(item.degree));
        ((CollectErrorWheelBinding) holder.getViewBinding()).radiusEt.setText(String.valueOf(item.radius));
        ((CollectErrorWheelBinding) holder.getViewBinding()).angleEt.addTextChangedListener(aVar);
        ((CollectErrorWheelBinding) holder.getViewBinding()).angleEt.setTag(aVar);
        ((CollectErrorWheelBinding) holder.getViewBinding()).radiusEt.addTextChangedListener(bVar);
        ((CollectErrorWheelBinding) holder.getViewBinding()).radiusEt.setTag(bVar);
        ((CollectErrorWheelBinding) holder.getViewBinding()).steeringCb.setOnCheckedChangeListener(null);
        ((CollectErrorWheelBinding) holder.getViewBinding()).radioGroup.setOnCheckedChangeListener(null);
        ((CollectErrorWheelBinding) holder.getViewBinding()).steeringCb.setChecked(item.enable);
        CheckBox checkBox = ((CollectErrorWheelBinding) holder.getViewBinding()).steeringCb;
        r.d(checkBox, "holder.viewBinding.steeringCb");
        p0.i(checkBox, new Function1<Boolean, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.WheelDegreeBinder$onBindViewHolder$1
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
        if (i == 1) {
            ((CollectErrorWheelBinding) holder.getViewBinding()).radioGroup.check(R.id.leftRb);
        } else if (i != 2) {
            ((CollectErrorWheelBinding) holder.getViewBinding()).radioGroup.check(R.id.middleR);
        } else {
            ((CollectErrorWheelBinding) holder.getViewBinding()).radioGroup.check(R.id.rightRb);
        }
        RadioGroup radioGroup = ((CollectErrorWheelBinding) holder.getViewBinding()).radioGroup;
        r.d(radioGroup, "holder.viewBinding.radioGroup");
        p0.j(radioGroup, new Function1<Integer, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.WheelDegreeBinder$onBindViewHolder$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(Integer num) {
                invoke(num.intValue());
                return v.f15822a;
            }

            public final void invoke(int i2) {
                if (i2 == R.id.leftRb) {
                    item.direction = 1;
                } else if (i2 == R.id.rightRb) {
                    item.direction = 2;
                } else {
                    item.direction = 0;
                }
            }
        });
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public void i(ViewBindingHolder<CollectErrorWheelBinding> holder) {
        r.e(holder, "holder");
        super.i(holder);
        EditText editText = ((CollectErrorWheelBinding) holder.getViewBinding()).angleEt;
        Object tag = ((CollectErrorWheelBinding) holder.getViewBinding()).angleEt.getTag();
        editText.removeTextChangedListener(tag instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b ? (cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b) tag : null);
        EditText editText2 = ((CollectErrorWheelBinding) holder.getViewBinding()).radiusEt;
        Object tag2 = ((CollectErrorWheelBinding) holder.getViewBinding()).radiusEt.getTag();
        editText2.removeTextChangedListener(tag2 instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b ? (cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b) tag2 : null);
    }
}
