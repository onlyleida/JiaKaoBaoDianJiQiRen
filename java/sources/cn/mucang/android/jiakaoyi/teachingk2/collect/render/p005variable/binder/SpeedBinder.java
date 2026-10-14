package cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder;

import android.widget.CheckBox;
import android.widget.RadioGroup;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.Relation;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.SpeedVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.NewCollectItemSpeedBinding;
import cn.mucang.android.jiakaoyi.teachingk2.p0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000)\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b2\u0006\u0010\f\u001a\u00020\u0002H\u0016R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/SpeedBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemSpeedBinding;", "()V", "watcher", "cn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/SpeedBinder$watcher$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/SpeedBinder$watcher$1;", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SpeedBinder extends ViewBindingBinder<SpeedVariable, NewCollectItemSpeedBinding> {
    private final b b = new b();

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6702a;

        static {
            int[] iArr = new int[Relation.values().length];
            iArr[Relation.BigThan.ordinal()] = 1;
            iArr[Relation.SmallThan.ordinal()] = 2;
            f6702a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/SpeedBinder$watcher$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/VariableWatcher;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;", "textChanged", "", "v", "input", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b<SpeedVariable> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(SpeedVariable speedVariable, String str) {
            Integer numValueOf;
            if (speedVariable == null) {
                return;
            }
            if (str == null) {
                numValueOf = null;
            } else {
                try {
                    numValueOf = Integer.valueOf(Integer.parseInt(str));
                } catch (Exception unused) {
                    u.h("设置失败，请输入数字");
                    return;
                }
            }
            speedVariable.speed = numValueOf.intValue();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<NewCollectItemSpeedBinding> holder, final SpeedVariable item) {
        r.e(holder, "holder");
        r.e(item, "item");
        this.b.f6658a = item;
        ((NewCollectItemSpeedBinding) holder.getViewBinding()).select.setOnCheckedChangeListener(null);
        ((NewCollectItemSpeedBinding) holder.getViewBinding()).radioGroup.setOnCheckedChangeListener(null);
        ((NewCollectItemSpeedBinding) holder.getViewBinding()).speedTv.removeTextChangedListener(this.b);
        ((NewCollectItemSpeedBinding) holder.getViewBinding()).select.setChecked(item.enable);
        CheckBox checkBox = ((NewCollectItemSpeedBinding) holder.getViewBinding()).select;
        r.d(checkBox, "holder.viewBinding.select");
        p0.i(checkBox, new Function1<Boolean, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.SpeedBinder$onBindViewHolder$1
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
        ((NewCollectItemSpeedBinding) holder.getViewBinding()).speedTv.setText(String.valueOf(item.speed));
        ((NewCollectItemSpeedBinding) holder.getViewBinding()).speedTv.addTextChangedListener(this.b);
        Relation relation = item.mode;
        int i = relation == null ? -1 : a.f6702a[relation.ordinal()];
        if (i == 1) {
            ((NewCollectItemSpeedBinding) holder.getViewBinding()).radioGroup.check(R.id.bigRb);
        } else if (i != 2) {
            ((NewCollectItemSpeedBinding) holder.getViewBinding()).radioGroup.check(R.id.equalRb);
        } else {
            ((NewCollectItemSpeedBinding) holder.getViewBinding()).radioGroup.check(R.id.smallRb);
        }
        RadioGroup radioGroup = ((NewCollectItemSpeedBinding) holder.getViewBinding()).radioGroup;
        r.d(radioGroup, "holder.viewBinding.radioGroup");
        p0.j(radioGroup, new Function1<Integer, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.SpeedBinder$onBindViewHolder$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(Integer num) {
                invoke(num.intValue());
                return v.f15822a;
            }

            public final void invoke(int i2) {
                if (i2 == R.id.bigRb) {
                    item.mode = Relation.BigThan;
                } else if (i2 == R.id.smallRb) {
                    item.mode = Relation.SmallThan;
                } else {
                    item.mode = Relation.Equal;
                }
            }
        });
    }
}
