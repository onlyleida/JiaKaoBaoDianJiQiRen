package cn.mucang.android.jiakaoyi.teachingk2.collect.render.error;

import android.annotation.SuppressLint;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.RadioGroup;
import androidx.appcompat.widget.d0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.RelativeVariableCreator;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.Relation;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarHeaderDistanceToLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.CollectErrorItemLineBinding;
import cn.mucang.android.jiakaoyi.teachingk2.p0;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005¢\u0006\u0002\u0010\u0007J\u001e\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J\u0016\u0010\u000f\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\rH\u0016J\u001e\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\rH\u0003R\u0019\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/SelectLineBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/SelectLineModel;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemLineBinding;", "getBoundary", "Lkotlin/Function0;", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "(Lkotlin/jvm/functions/Function0;)V", "getGetBoundary", "()Lkotlin/jvm/functions/Function0;", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "onViewRecycled", "refreshLine", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SelectLineBinder extends ViewBindingBinder<cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.d, CollectErrorItemLineBinding> {
    private final Function0<cn.mucang.android.jiakaoyi.hpmap.a.a.b> b;

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6602a;

        static {
            int[] iArr = new int[Relation.values().length];
            iArr[Relation.BigThan.ordinal()] = 1;
            iArr[Relation.SmallThan.ordinal()] = 2;
            f6602a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0014¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/collect/render/error/SelectLineBinder$onBindViewHolder$watcher$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/VariableWatcher;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;", "textChanged", "", "v", "input", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b<CarHeaderDistanceToLineVariable> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(CarHeaderDistanceToLineVariable v, String input) {
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
    public SelectLineBinder(Function0<? extends cn.mucang.android.jiakaoyi.hpmap.a.a.b> getBoundary) {
        r.e(getBoundary, "getBoundary");
        this.b = getBoundary;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(final cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.d item, final SelectLineBinder this$0, final ViewBindingHolder holder, View view) {
        r.e(item, "$item");
        r.e(this$0, "this$0");
        r.e(holder, "$holder");
        final d0 d0Var = new d0(view.getContext());
        Step step = item.f6586a;
        r.d(step, "item.step");
        final List<String> listD = RelativeVariableCreator.d(step, "车头", "距离");
        d0Var.l(new ArrayAdapter(view.getContext(), R.layout.new_collect_list_item, listD));
        d0Var.P(-2);
        d0Var.G(-2);
        d0Var.B(view);
        d0Var.I(true);
        d0Var.K(new AdapterView.OnItemClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.e
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i, long j) {
                SelectLineBinder.t(listD, item, this$0, holder, d0Var, adapterView, view2, i, j);
            }
        });
        d0Var.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(List list, cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.d item, SelectLineBinder this$0, ViewBindingHolder holder, d0 pop, AdapterView adapterView, View view, int i, long j) {
        r.e(list, "$list");
        r.e(item, "$item");
        r.e(this$0, "this$0");
        r.e(holder, "$holder");
        r.e(pop, "$pop");
        List<Integer> listE = RelativeVariableCreator.e((String) list.get(i));
        item.b.startPointIndex = listE.get(0).intValue();
        item.b.endPointIndex = listE.get(1).intValue();
        this$0.w(item, holder);
        pop.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.d item, SelectLineBinder this$0, ViewBindingHolder holder, View view) {
        r.e(item, "$item");
        r.e(this$0, "this$0");
        r.e(holder, "$holder");
        if (!item.b.enable) {
            u.h("请先选择线型");
            return;
        }
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVarInvoke = this$0.n().invoke();
        if (bVarInvoke == null) {
            return;
        }
        item.b.convertCoordinate(bVarInvoke.j());
        cn.mucang.android.jiakaoyi.signal.c.e eVarT = cn.mucang.android.jiakaoyi.signal.c.d.t();
        Pos pos = eVarT.c().carRect.b;
        CarHeaderDistanceToLineVariable carHeaderDistanceToLineVariable = item.b;
        double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos, carHeaderDistanceToLineVariable.startPoint, carHeaderDistanceToLineVariable.endPoint);
        Pos pos2 = eVarT.c().carRect.c;
        CarHeaderDistanceToLineVariable carHeaderDistanceToLineVariable2 = item.b;
        float fD = (float) kotlin.ranges.f.d(dK, cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos2, carHeaderDistanceToLineVariable2.startPoint, carHeaderDistanceToLineVariable2.endPoint));
        CarHeaderDistanceToLineVariable carHeaderDistanceToLineVariable3 = item.b;
        if (fD == carHeaderDistanceToLineVariable3.distance) {
            return;
        }
        carHeaderDistanceToLineVariable3.distance = fD;
        EditText editText = ((CollectErrorItemLineBinding) holder.getViewBinding()).distanceTv;
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String str = String.format("%.0f", Arrays.copyOf(new Object[]{Float.valueOf(item.b.distance)}, 1));
        r.d(str, "java.lang.String.format(format, *args)");
        editText.setText(str);
        p0.a();
    }

    @SuppressLint({"SetTextI18n"})
    private final void w(cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.d dVar, ViewBindingHolder<CollectErrorItemLineBinding> viewBindingHolder) {
        CarHeaderDistanceToLineVariable carHeaderDistanceToLineVariable = dVar.b;
        if (carHeaderDistanceToLineVariable.startPointIndex == 0 || carHeaderDistanceToLineVariable.endPointIndex == 0) {
            ((CollectErrorItemLineBinding) viewBindingHolder.getViewBinding()).lineTv.setText("选择线型");
            dVar.b.enable = false;
            return;
        }
        ((CollectErrorItemLineBinding) viewBindingHolder.getViewBinding()).lineTv.setText(dVar.b.startPointIndex + "--" + dVar.b.endPointIndex + (char) 32447);
        dVar.b.enable = true;
    }

    public final Function0<cn.mucang.android.jiakaoyi.hpmap.a.a.b> n() {
        return this.b;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarHeaderDistanceToLineVariable] */
    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<CollectErrorItemLineBinding> holder, final cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.d item) {
        r.e(holder, "holder");
        r.e(item, "item");
        w(item, holder);
        ((CollectErrorItemLineBinding) holder.getViewBinding()).lineTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectLineBinder.s(item, this, holder, view);
            }
        });
        b bVar = new b();
        bVar.f6658a = item.b;
        EditText editText = ((CollectErrorItemLineBinding) holder.getViewBinding()).distanceTv;
        Object tag = ((CollectErrorItemLineBinding) holder.getViewBinding()).distanceTv.getTag();
        editText.removeTextChangedListener(tag instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b ? (cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b) tag : null);
        ((CollectErrorItemLineBinding) holder.getViewBinding()).radioGroup.setOnCheckedChangeListener(null);
        EditText editText2 = ((CollectErrorItemLineBinding) holder.getViewBinding()).distanceTv;
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String str = String.format("%.0f", Arrays.copyOf(new Object[]{Float.valueOf(item.b.distance)}, 1));
        r.d(str, "java.lang.String.format(format, *args)");
        editText2.setText(str);
        ((CollectErrorItemLineBinding) holder.getViewBinding()).distanceTv.addTextChangedListener(bVar);
        ((CollectErrorItemLineBinding) holder.getViewBinding()).distanceTv.setTag(bVar);
        Relation relation = item.b.mode;
        int i = relation == null ? -1 : a.f6602a[relation.ordinal()];
        if (i == 1) {
            ((CollectErrorItemLineBinding) holder.getViewBinding()).radioGroup.check(R.id.bigRb);
        } else if (i != 2) {
            ((CollectErrorItemLineBinding) holder.getViewBinding()).radioGroup.check(R.id.equalRb);
        } else {
            ((CollectErrorItemLineBinding) holder.getViewBinding()).radioGroup.check(R.id.smallRb);
        }
        RadioGroup radioGroup = ((CollectErrorItemLineBinding) holder.getViewBinding()).radioGroup;
        r.d(radioGroup, "holder.viewBinding.radioGroup");
        p0.j(radioGroup, new Function1<Integer, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.SelectLineBinder$onBindViewHolder$2
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
                    item.b.mode = Relation.BigThan;
                } else if (i2 == R.id.smallRb) {
                    item.b.mode = Relation.SmallThan;
                } else {
                    item.b.mode = Relation.Equal;
                }
            }
        });
        ((CollectErrorItemLineBinding) holder.getViewBinding()).refresh.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectLineBinder.u(item, this, holder, view);
            }
        });
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public void i(ViewBindingHolder<CollectErrorItemLineBinding> holder) {
        r.e(holder, "holder");
        super.i(holder);
        EditText editText = ((CollectErrorItemLineBinding) holder.getViewBinding()).distanceTv;
        Object tag = ((CollectErrorItemLineBinding) holder.getViewBinding()).distanceTv.getTag();
        editText.removeTextChangedListener(tag instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b ? (cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b) tag : null);
    }
}
