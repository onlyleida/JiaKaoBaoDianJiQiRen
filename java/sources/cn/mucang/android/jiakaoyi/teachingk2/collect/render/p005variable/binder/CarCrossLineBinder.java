package cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder;

import android.annotation.SuppressLint;
import android.widget.CheckBox;
import android.widget.ImageView;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarCrossLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.NewCollectItemCarCrossLineBinding;
import cn.mucang.android.jiakaoyi.teachingk2.p0;
import cn.mucang.sundial.library.activity.InputIdCardActivity;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\bJ\u001e\u0010\u000b\u001a\u00020\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J\u001e\u0010\u000f\u001a\u00020\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0003R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarCrossLineBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarCrossLineVariable;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemCarCrossLineBinding;", InputIdCardActivity.DELETE, "Lkotlin/Function1;", "", "", "(Lkotlin/jvm/functions/Function1;)V", "getDelete", "()Lkotlin/jvm/functions/Function1;", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "setText", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarCrossLineBinder extends ViewBindingBinder<CarCrossLineVariable, NewCollectItemCarCrossLineBinding> {
    private final Function1<Object, v> b;

    public CarCrossLineBinder(Function1<Object, v> delete) {
        r.e(delete, "delete");
        this.b = delete;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"SetTextI18n"})
    public final void q(ViewBindingHolder<NewCollectItemCarCrossLineBinding> viewBindingHolder, CarCrossLineVariable carCrossLineVariable) {
        String str = carCrossLineVariable.needCross ? "接触" : "不接触";
        ((NewCollectItemCarCrossLineBinding) viewBindingHolder.getViewBinding()).name.setText("车身" + str + carCrossLineVariable.startPointIndex + '-' + carCrossLineVariable.endPointIndex + (char) 32447);
    }

    public final Function1<Object, v> o() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<NewCollectItemCarCrossLineBinding> holder, final CarCrossLineVariable item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((NewCollectItemCarCrossLineBinding) holder.getViewBinding()).touchCb.setOnCheckedChangeListener(null);
        ((NewCollectItemCarCrossLineBinding) holder.getViewBinding()).lineCb.setOnCheckedChangeListener(null);
        ((NewCollectItemCarCrossLineBinding) holder.getViewBinding()).touchCb.setChecked(item.needCross);
        ((NewCollectItemCarCrossLineBinding) holder.getViewBinding()).lineCb.setChecked(item.crossWithExtension);
        q(holder, item);
        CheckBox checkBox = ((NewCollectItemCarCrossLineBinding) holder.getViewBinding()).touchCb;
        r.d(checkBox, "holder.viewBinding.touchCb");
        p0.i(checkBox, new Function1<Boolean, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.CarCrossLineBinder$onBindViewHolder$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return v.f15822a;
            }

            public final void invoke(boolean z) {
                CarCrossLineVariable carCrossLineVariable = item;
                carCrossLineVariable.needCross = z;
                this.q(holder, carCrossLineVariable);
            }
        });
        CheckBox checkBox2 = ((NewCollectItemCarCrossLineBinding) holder.getViewBinding()).lineCb;
        r.d(checkBox2, "holder.viewBinding.lineCb");
        p0.i(checkBox2, new Function1<Boolean, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.CarCrossLineBinder$onBindViewHolder$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return v.f15822a;
            }

            public final void invoke(boolean z) {
                item.crossWithExtension = z;
            }
        });
        ImageView imageView = ((NewCollectItemCarCrossLineBinding) holder.getViewBinding()).deleteIv;
        r.d(imageView, "holder.viewBinding.deleteIv");
        p0.m(imageView, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.CarCrossLineBinder$onBindViewHolder$3
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
    }
}
