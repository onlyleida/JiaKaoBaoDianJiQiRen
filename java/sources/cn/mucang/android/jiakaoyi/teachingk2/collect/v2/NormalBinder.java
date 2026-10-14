package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

import android.widget.CheckBox;
import android.widget.RadioGroup;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.NewCollectItemNormalBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000)\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b2\u0006\u0010\f\u001a\u00020\u0002H\u0016R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;", "()V", "watcher", "cn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder$watcher$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder$watcher$1;", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NormalBinder extends ViewBindingBinder<NormalVariable, NewCollectItemNormalBinding> {
    private final a b = new a();

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0014¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder$watcher$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/VariableWatcher;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;", "textChanged", "", "v", "input", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b<NormalVariable> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(NormalVariable normalVariable, String input) {
            kotlin.jvm.internal.r.e(input, "input");
            if (normalVariable != null) {
                try {
                    normalVariable.setWidth(Integer.parseInt(input));
                } catch (Exception unused) {
                    cn.mucang.android.core.utils.u.h("设置失败，请输入数字");
                    return;
                }
            }
            cn.mucang.android.jiakaoyi.teachingk2.p0.a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<NewCollectItemNormalBinding> holder, final NormalVariable item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        ((NewCollectItemNormalBinding) holder.getViewBinding()).radioGroup.setOnCheckedChangeListener(null);
        if (item.isRange) {
            ((NewCollectItemNormalBinding) holder.getViewBinding()).radioGroup.check(R.id.areaRb);
        } else {
            ((NewCollectItemNormalBinding) holder.getViewBinding()).radioGroup.check(R.id.lineRb);
        }
        RadioGroup radioGroup = ((NewCollectItemNormalBinding) holder.getViewBinding()).radioGroup;
        kotlin.jvm.internal.r.d(radioGroup, "holder.viewBinding.radioGroup");
        cn.mucang.android.jiakaoyi.teachingk2.p0.j(radioGroup, new Function1<Integer, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.NormalBinder$onBindViewHolder$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(Integer num) {
                invoke(num.intValue());
                return kotlin.v.f15822a;
            }

            public final void invoke(int i) {
                item.isRange = i == R.id.areaRb;
            }
        });
        ((NewCollectItemNormalBinding) holder.getViewBinding()).selectCb.setOnCheckedChangeListener(null);
        ((NewCollectItemNormalBinding) holder.getViewBinding()).selectCb.setChecked(!item.noAdvance);
        CheckBox checkBox = ((NewCollectItemNormalBinding) holder.getViewBinding()).selectCb;
        kotlin.jvm.internal.r.d(checkBox, "holder.viewBinding.selectCb");
        cn.mucang.android.jiakaoyi.teachingk2.p0.i(checkBox, new Function1<Boolean, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.NormalBinder$onBindViewHolder$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return kotlin.v.f15822a;
            }

            public final void invoke(boolean z) {
                item.noAdvance = !z;
            }
        });
        ((NewCollectItemNormalBinding) holder.getViewBinding()).rangeEt.removeTextChangedListener(this.b);
        ((NewCollectItemNormalBinding) holder.getViewBinding()).rangeEt.setText(String.valueOf(item.width));
        this.b.f6658a = item;
        ((NewCollectItemNormalBinding) holder.getViewBinding()).rangeEt.addTextChangedListener(this.b);
    }
}
