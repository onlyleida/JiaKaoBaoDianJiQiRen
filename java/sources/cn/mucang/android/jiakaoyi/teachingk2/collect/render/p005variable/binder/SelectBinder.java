package cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder;

import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import androidx.appcompat.widget.d0;
import cn.mucang.android.core.utils.s0;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.e;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.RelativeVariableCreator;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.NewCollectItemSelectBinding;
import cn.mucang.sundial.library.activity.InputIdCardActivity;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.q, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0019BE\u0012\u001a\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\b0\u0005\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\n\u0012\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\f¢\u0006\u0002\u0010\u000eJ\u001e\u0010\u0015\u001a\u00020\b2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u00172\u0006\u0010\u0018\u001a\u00020\u0002H\u0016R%\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\n¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0019\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\f¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/SelectBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/SelectModel;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemSelectBinding;", "create", "Lkotlin/Function2;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;", "", "", InputIdCardActivity.DELETE, "Lkotlin/Function1;", "getBoundary", "Lkotlin/Function0;", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V", "getCreate", "()Lkotlin/jvm/functions/Function2;", "getDelete", "()Lkotlin/jvm/functions/Function1;", "getGetBoundary", "()Lkotlin/jvm/functions/Function0;", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "Companion", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SelectBinder extends ViewBindingBinder<e, NewCollectItemSelectBinding> {
    private final Function2<Variable, Object, v> b;
    private final Function1<Object, v> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function0<b> f6720d;

    /* JADX WARN: Multi-variable type inference failed */
    public SelectBinder(Function2<? super Variable, Object, v> create, Function1<Object, v> delete, Function0<? extends b> getBoundary) {
        r.e(create, "create");
        r.e(delete, "delete");
        r.e(getBoundary, "getBoundary");
        this.b = create;
        this.c = delete;
        this.f6720d = getBoundary;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(e item, final ViewBindingHolder holder, View view) {
        r.e(item, "$item");
        r.e(holder, "$holder");
        final d0 d0Var = new d0(view.getContext());
        Step step = item.f6587a;
        r.d(step, "item.step");
        final List<String> listC = RelativeVariableCreator.c(step, ((NewCollectItemSelectBinding) holder.getViewBinding()).carTv.getText().toString());
        d0Var.l(new ArrayAdapter(view.getContext(), R.layout.new_collect_list_item, listC));
        d0Var.P(s0.a(108.0f));
        d0Var.G(-2);
        d0Var.B(view);
        d0Var.I(true);
        d0Var.K(new AdapterView.OnItemClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.i
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i, long j) {
                SelectBinder.B(holder, listC, d0Var, adapterView, view2, i, j);
            }
        });
        d0Var.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(ViewBindingHolder holder, List list, d0 pop, AdapterView adapterView, View view, int i, long j) {
        r.e(holder, "$holder");
        r.e(list, "$list");
        r.e(pop, "$pop");
        if (r.a(((NewCollectItemSelectBinding) holder.getViewBinding()).relationTv.getText(), list.get(i))) {
            return;
        }
        ((NewCollectItemSelectBinding) holder.getViewBinding()).relationTv.setText((CharSequence) list.get(i));
        ((NewCollectItemSelectBinding) holder.getViewBinding()).relationTv.setSelected(true);
        ((NewCollectItemSelectBinding) holder.getViewBinding()).lineTv.setSelected(false);
        ((NewCollectItemSelectBinding) holder.getViewBinding()).lineTv.setText("选择线型");
        pop.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(final e item, final ViewBindingHolder holder, final SelectBinder this$0, View view) {
        r.e(item, "$item");
        r.e(holder, "$holder");
        r.e(this$0, "this$0");
        final d0 d0Var = new d0(view.getContext());
        Step step = item.f6587a;
        r.d(step, "item.step");
        final List<String> listD = RelativeVariableCreator.d(step, ((NewCollectItemSelectBinding) holder.getViewBinding()).carTv.getText().toString(), ((NewCollectItemSelectBinding) holder.getViewBinding()).relationTv.getText().toString());
        d0Var.l(new ArrayAdapter(view.getContext(), R.layout.new_collect_list_item, listD));
        d0Var.P(s0.a(108.0f));
        d0Var.G(-2);
        d0Var.B(view);
        d0Var.I(true);
        d0Var.K(new AdapterView.OnItemClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.j
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i, long j) {
                SelectBinder.D(holder, listD, this$0, item, d0Var, adapterView, view2, i, j);
            }
        });
        d0Var.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(ViewBindingHolder holder, List list, SelectBinder this$0, e item, d0 pop, AdapterView adapterView, View view, int i, long j) {
        r.e(holder, "$holder");
        r.e(list, "$list");
        r.e(this$0, "this$0");
        r.e(item, "$item");
        r.e(pop, "$pop");
        ((NewCollectItemSelectBinding) holder.getViewBinding()).lineTv.setText((CharSequence) list.get(i));
        this$0.n().invoke(RelativeVariableCreator.a(((NewCollectItemSelectBinding) holder.getViewBinding()).carTv.getText().toString(), ((NewCollectItemSelectBinding) holder.getViewBinding()).relationTv.getText().toString(), ((NewCollectItemSelectBinding) holder.getViewBinding()).lineTv.getText().toString(), this$0.p().invoke()), item.b);
        pop.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(SelectBinder this$0, e item, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        this$0.o().invoke(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(e item, final ViewBindingHolder holder, View view) {
        r.e(item, "$item");
        r.e(holder, "$holder");
        final d0 d0Var = new d0(view.getContext());
        Step step = item.f6587a;
        r.d(step, "item.step");
        final List<String> listB = RelativeVariableCreator.b(step);
        d0Var.l(new ArrayAdapter(view.getContext(), R.layout.new_collect_list_item, listB));
        d0Var.P(s0.a(108.0f));
        d0Var.G(-2);
        d0Var.B(view);
        d0Var.I(true);
        d0Var.K(new AdapterView.OnItemClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.m
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i, long j) {
                SelectBinder.z(holder, listB, d0Var, adapterView, view2, i, j);
            }
        });
        d0Var.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(ViewBindingHolder holder, List carList, d0 pop, AdapterView adapterView, View view, int i, long j) {
        r.e(holder, "$holder");
        r.e(carList, "$carList");
        r.e(pop, "$pop");
        if (r.a(((NewCollectItemSelectBinding) holder.getViewBinding()).carTv.getText(), carList.get(i))) {
            return;
        }
        ((NewCollectItemSelectBinding) holder.getViewBinding()).carTv.setText((CharSequence) carList.get(i));
        ((NewCollectItemSelectBinding) holder.getViewBinding()).carTv.setSelected(true);
        ((NewCollectItemSelectBinding) holder.getViewBinding()).relationTv.setSelected(false);
        ((NewCollectItemSelectBinding) holder.getViewBinding()).relationTv.setText("选择关系");
        pop.dismiss();
    }

    public final Function2<Variable, Object, v> n() {
        return this.b;
    }

    public final Function1<Object, v> o() {
        return this.c;
    }

    public final Function0<b> p() {
        return this.f6720d;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<NewCollectItemSelectBinding> holder, final e item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((NewCollectItemSelectBinding) holder.getViewBinding()).carTv.setText("选择车身");
        ((NewCollectItemSelectBinding) holder.getViewBinding()).relationTv.setText("选择关系");
        ((NewCollectItemSelectBinding) holder.getViewBinding()).lineTv.setText("选择线型");
        ((NewCollectItemSelectBinding) holder.getViewBinding()).carTv.setSelected(false);
        ((NewCollectItemSelectBinding) holder.getViewBinding()).relationTv.setSelected(false);
        ((NewCollectItemSelectBinding) holder.getViewBinding()).lineTv.setSelected(false);
        ((NewCollectItemSelectBinding) holder.getViewBinding()).carTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectBinder.y(item, holder, view);
            }
        });
        ((NewCollectItemSelectBinding) holder.getViewBinding()).relationTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectBinder.A(item, holder, view);
            }
        });
        ((NewCollectItemSelectBinding) holder.getViewBinding()).lineTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectBinder.C(item, holder, this, view);
            }
        });
        ((NewCollectItemSelectBinding) holder.getViewBinding()).deleteIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectBinder.E(this.f6711a, item, view);
            }
        });
    }
}
