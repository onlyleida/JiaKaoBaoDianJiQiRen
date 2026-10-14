package cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder;

import android.annotation.SuppressLint;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioGroup;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.Relation;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarDistanceToLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.NewCollectItemDistanceBinding;
import cn.mucang.android.jiakaoyi.teachingk2.p0;
import cn.mucang.sundial.library.activity.InputIdCardActivity;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B)\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t¢\u0006\u0002\u0010\u000bJ\u001e\u0010\u0010\u001a\u00020\u00072\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u0017J\u0016\u0010\u0014\u001a\u00020\u00072\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u0012H\u0016R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0019\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarDistanceToLineBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;", InputIdCardActivity.DELETE, "Lkotlin/Function1;", "", "", "getBoundary", "Lkotlin/Function0;", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V", "getDelete", "()Lkotlin/jvm/functions/Function1;", "getGetBoundary", "()Lkotlin/jvm/functions/Function0;", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "onViewRecycled", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarDistanceToLineBinder extends ViewBindingBinder<CarDistanceToLineVariable, NewCollectItemDistanceBinding> {
    private final Function1<Object, v> b;
    private final Function0<cn.mucang.android.jiakaoyi.hpmap.a.a.b> c;

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6698a;

        static {
            int[] iArr = new int[Relation.values().length];
            iArr[Relation.BigThan.ordinal()] = 1;
            iArr[Relation.SmallThan.ordinal()] = 2;
            f6698a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0014¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarDistanceToLineBinder$onBindViewHolder$watcher$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/VariableWatcher;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;", "textChanged", "", "v", "input", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b<CarDistanceToLineVariable> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(CarDistanceToLineVariable v, String input) {
            r.e(v, "v");
            r.e(input, "input");
            try {
                v.distance = Float.parseFloat(StringsKt__StringsKt.J0(input).toString());
            } catch (Exception unused) {
                u.h("距离解析出错");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CarDistanceToLineBinder(Function1<Object, v> delete, Function0<? extends cn.mucang.android.jiakaoyi.hpmap.a.a.b> getBoundary) {
        r.e(delete, "delete");
        r.e(getBoundary, "getBoundary");
        this.b = delete;
        this.c = getBoundary;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(CarDistanceToLineBinder this$0, CarDistanceToLineVariable item, ViewBindingHolder holder, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        r.e(holder, "$holder");
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVarInvoke = this$0.o().invoke();
        if (bVarInvoke == null) {
            return;
        }
        item.convertCoordinate(bVarInvoke.j());
        float fK = (float) cn.mucang.android.jiakaoyi.hpmap.d.a.k(d.t().c().center, item.startPoint, item.endPoint);
        if (fK == item.distance) {
            return;
        }
        item.distance = fK;
        EditText editText = ((NewCollectItemDistanceBinding) holder.getViewBinding()).distanceTv;
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String str = String.format("%.0f", Arrays.copyOf(new Object[]{Float.valueOf(item.distance)}, 1));
        r.d(str, "java.lang.String.format(format, *args)");
        editText.setText(str);
        p0.a();
    }

    public final Function1<Object, v> n() {
        return this.b;
    }

    public final Function0<cn.mucang.android.jiakaoyi.hpmap.a.a.b> o() {
        return this.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.drakeet.multitype.c
    @SuppressLint({"SetTextI18n"})
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<NewCollectItemDistanceBinding> holder, final CarDistanceToLineVariable item) {
        r.e(holder, "holder");
        r.e(item, "item");
        b bVar = new b();
        bVar.f6658a = item;
        EditText editText = ((NewCollectItemDistanceBinding) holder.getViewBinding()).distanceTv;
        Object tag = ((NewCollectItemDistanceBinding) holder.getViewBinding()).distanceTv.getTag();
        editText.removeTextChangedListener(tag instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b ? (cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b) tag : null);
        ((NewCollectItemDistanceBinding) holder.getViewBinding()).radioGroup.setOnCheckedChangeListener(null);
        ((NewCollectItemDistanceBinding) holder.getViewBinding()).name.setText("车中心距离" + item.startPointIndex + '-' + item.endPointIndex + "线（cm）：");
        ImageView imageView = ((NewCollectItemDistanceBinding) holder.getViewBinding()).deleteIv;
        r.d(imageView, "holder.viewBinding.deleteIv");
        p0.m(imageView, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.CarDistanceToLineBinder$onBindViewHolder$1
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
                this.this$0.n().invoke(item);
            }
        });
        EditText editText2 = ((NewCollectItemDistanceBinding) holder.getViewBinding()).distanceTv;
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String str = String.format("%.0f", Arrays.copyOf(new Object[]{Float.valueOf(item.distance)}, 1));
        r.d(str, "java.lang.String.format(format, *args)");
        editText2.setText(str);
        ((NewCollectItemDistanceBinding) holder.getViewBinding()).distanceTv.addTextChangedListener(bVar);
        ((NewCollectItemDistanceBinding) holder.getViewBinding()).distanceTv.setTag(bVar);
        Relation relation = item.mode;
        int i = relation == null ? -1 : a.f6698a[relation.ordinal()];
        if (i == 1) {
            ((NewCollectItemDistanceBinding) holder.getViewBinding()).radioGroup.check(R.id.bigRb);
        } else if (i != 2) {
            ((NewCollectItemDistanceBinding) holder.getViewBinding()).radioGroup.check(R.id.equalRb);
        } else {
            ((NewCollectItemDistanceBinding) holder.getViewBinding()).radioGroup.check(R.id.smallRb);
        }
        RadioGroup radioGroup = ((NewCollectItemDistanceBinding) holder.getViewBinding()).radioGroup;
        r.d(radioGroup, "holder.viewBinding.radioGroup");
        p0.j(radioGroup, new Function1<Integer, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.CarDistanceToLineBinder$onBindViewHolder$2
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
        ((NewCollectItemDistanceBinding) holder.getViewBinding()).refresh.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarDistanceToLineBinder.r(this.f6706a, item, holder, view);
            }
        });
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public void i(ViewBindingHolder<NewCollectItemDistanceBinding> holder) {
        r.e(holder, "holder");
        super.i(holder);
        EditText editText = ((NewCollectItemDistanceBinding) holder.getViewBinding()).distanceTv;
        Object tag = ((NewCollectItemDistanceBinding) holder.getViewBinding()).distanceTv.getTag();
        editText.removeTextChangedListener(tag instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b ? (cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b) tag : null);
    }
}
