package cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder;

import android.widget.EditText;
import android.widget.ImageView;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.WheelCrossLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.NewCollectItemWheelCrossLineBinding;
import cn.mucang.android.jiakaoyi.teachingk2.p0;
import cn.mucang.sundial.library.activity.InputIdCardActivity;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\bJ\u001e\u0010\u000b\u001a\u00020\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J\u0016\u0010\u000f\u001a\u00020\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\rH\u0016J\u001e\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\rH\u0002R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/WheelCrossLineBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemWheelCrossLineBinding;", InputIdCardActivity.DELETE, "Lkotlin/Function1;", "", "", "(Lkotlin/jvm/functions/Function1;)V", "getDelete", "()Lkotlin/jvm/functions/Function1;", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "onViewRecycled", "setText", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class WheelCrossLineBinder extends ViewBindingBinder<WheelCrossLineVariable, NewCollectItemWheelCrossLineBinding> {
    private final Function1<Object, v> b;

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0014¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/WheelCrossLineBinder$onBindViewHolder$watcher$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/VariableWatcher;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;", "textChanged", "", "v", "input", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends b<WheelCrossLineVariable> {
        final /* synthetic */ WheelCrossLineVariable b;
        final /* synthetic */ WheelCrossLineBinder c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ViewBindingHolder<NewCollectItemWheelCrossLineBinding> f6703d;

        a(WheelCrossLineVariable wheelCrossLineVariable, WheelCrossLineBinder wheelCrossLineBinder, ViewBindingHolder<NewCollectItemWheelCrossLineBinding> viewBindingHolder) {
            this.b = wheelCrossLineVariable;
            this.c = wheelCrossLineBinder;
            this.f6703d = viewBindingHolder;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(WheelCrossLineVariable v, String input) {
            r.e(v, "v");
            r.e(input, "input");
            String string = StringsKt__StringsKt.J0(input).toString();
            ArrayList arrayList = new ArrayList();
            Charset charset = Charsets.f15811a;
            Objects.requireNonNull(string, "null cannot be cast to non-null type java.lang.String");
            byte[] bytes = string.getBytes(charset);
            r.d(bytes, "(this as java.lang.String).getBytes(charset)");
            int i = 0;
            int length = bytes.length;
            while (i < length) {
                byte b = bytes[i];
                i++;
                if (b != 44) {
                    int i2 = b - 48;
                    if (i2 < 1 || i2 > 4) {
                        u.h("设置失败\n左前轮:1, 左后轮:2, 右前轮:3, 右后轮:4");
                    } else {
                        arrayList.add(Integer.valueOf(i2));
                    }
                }
            }
            WheelCrossLineVariable wheelCrossLineVariable = this.b;
            wheelCrossLineVariable.wheelIndex = arrayList;
            this.c.r(wheelCrossLineVariable, this.f6703d);
        }
    }

    public WheelCrossLineBinder(Function1<Object, v> delete) {
        r.e(delete, "delete");
        this.b = delete;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r(WheelCrossLineVariable wheelCrossLineVariable, ViewBindingHolder<NewCollectItemWheelCrossLineBinding> viewBindingHolder) {
        Object tag = ((NewCollectItemWheelCrossLineBinding) viewBindingHolder.getViewBinding()).wheelEt.getTag();
        b bVar = tag instanceof b ? (b) tag : null;
        ((NewCollectItemWheelCrossLineBinding) viewBindingHolder.getViewBinding()).wheelEt.removeTextChangedListener(bVar);
        StringBuilder sb = new StringBuilder();
        List<Integer> list = wheelCrossLineVariable.wheelIndex;
        if (list == null || list.size() <= 0) {
            sb.append("车轮");
        } else {
            for (Integer i : wheelCrossLineVariable.wheelIndex) {
                r.d(i, "i");
                sb.append(Wheel.parse(i.intValue()).wheelName);
            }
        }
        sb.append("接触" + wheelCrossLineVariable.startPointIndex + '-' + wheelCrossLineVariable.endPointIndex + (char) 32447);
        ((NewCollectItemWheelCrossLineBinding) viewBindingHolder.getViewBinding()).name.setText(sb.toString());
        if (g.b(wheelCrossLineVariable.wheelIndex)) {
            ((NewCollectItemWheelCrossLineBinding) viewBindingHolder.getViewBinding()).wheelEt.setText("");
        } else {
            StringBuilder sb2 = new StringBuilder();
            Integer num = wheelCrossLineVariable.wheelIndex.get(0);
            r.d(num, "item.wheelIndex[0]");
            sb2.append(num.intValue());
            int size = wheelCrossLineVariable.wheelIndex.size();
            int i2 = 1;
            if (1 < size) {
                while (true) {
                    int i3 = i2 + 1;
                    sb2.append(",");
                    Integer num2 = wheelCrossLineVariable.wheelIndex.get(i2);
                    r.d(num2, "item.wheelIndex[i]");
                    sb2.append(num2.intValue());
                    if (i3 >= size) {
                        break;
                    } else {
                        i2 = i3;
                    }
                }
            }
            ((NewCollectItemWheelCrossLineBinding) viewBindingHolder.getViewBinding()).wheelEt.setText(sb2.toString());
            ((NewCollectItemWheelCrossLineBinding) viewBindingHolder.getViewBinding()).wheelEt.setSelection(sb2.length());
        }
        ((NewCollectItemWheelCrossLineBinding) viewBindingHolder.getViewBinding()).wheelEt.addTextChangedListener(bVar);
    }

    public final Function1<Object, v> o() {
        return this.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<NewCollectItemWheelCrossLineBinding> holder, final WheelCrossLineVariable item) {
        r.e(holder, "holder");
        r.e(item, "item");
        a aVar = new a(item, this, holder);
        aVar.f6658a = item;
        ImageView imageView = ((NewCollectItemWheelCrossLineBinding) holder.getViewBinding()).deleteIv;
        r.d(imageView, "holder.viewBinding.deleteIv");
        p0.m(imageView, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.WheelCrossLineBinder$onBindViewHolder$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                this.this$0.o().invoke(item);
            }
        });
        ((NewCollectItemWheelCrossLineBinding) holder.getViewBinding()).wheelEt.setTag(aVar);
        r(item, holder);
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public void i(ViewBindingHolder<NewCollectItemWheelCrossLineBinding> holder) {
        r.e(holder, "holder");
        super.i(holder);
        EditText editText = ((NewCollectItemWheelCrossLineBinding) holder.getViewBinding()).wheelEt;
        Object tag = ((NewCollectItemWheelCrossLineBinding) holder.getViewBinding()).wheelEt.getTag();
        editText.removeTextChangedListener(tag instanceof b ? (b) tag : null);
    }
}
