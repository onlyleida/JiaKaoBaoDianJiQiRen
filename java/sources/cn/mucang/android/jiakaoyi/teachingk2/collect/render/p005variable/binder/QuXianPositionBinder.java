package cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder;

import android.annotation.SuppressLint;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.j;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.quxian.QuXianPositionVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.NewCollectItemQuxianBinding;
import cn.mucang.android.jiakaoyi.teachingk2.p0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005¢\u0006\u0002\u0010\u0007J\u001e\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0017R\u0019\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0010\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\f¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/QuXianPositionBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemQuxianBinding;", "getBoundary", "Lkotlin/Function0;", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "(Lkotlin/jvm/functions/Function0;)V", "getGetBoundary", "()Lkotlin/jvm/functions/Function0;", "watcher", "cn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/QuXianPositionBinder$watcher$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/QuXianPositionBinder$watcher$1;", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class QuXianPositionBinder extends ViewBindingBinder<QuXianPositionVariable, NewCollectItemQuxianBinding> {
    private final Function0<b> b;
    private final a c;

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0014¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/QuXianPositionBinder$watcher$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/VariableWatcher;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;", "textChanged", "", "v", "input", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b<QuXianPositionVariable> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(QuXianPositionVariable quXianPositionVariable, String input) {
            r.e(input, "input");
            if (quXianPositionVariable == null) {
                return;
            }
            try {
                quXianPositionVariable.radius = Double.parseDouble(input);
            } catch (Exception unused) {
                u.h("设置失败，请输入数字");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public QuXianPositionBinder(Function0<? extends b> getBoundary) {
        r.e(getBoundary, "getBoundary");
        this.b = getBoundary;
        this.c = new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(QuXianPositionBinder this$0, QuXianPositionVariable item, ViewBindingHolder holder, View view) {
        boolean z;
        r.e(this$0, "this$0");
        r.e(item, "$item");
        r.e(holder, "$holder");
        b bVarInvoke = this$0.n().invoke();
        if (bVarInvoke != null && (bVarInvoke instanceof j)) {
            boolean z2 = true;
            item.centerCoordinate = true;
            Pos posA = cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.a(bVarInvoke).a(d.t().c().center);
            double d2 = posA.x;
            double d3 = posA.y;
            if (d2 == item.x) {
                z = false;
            } else {
                item.x = d2;
                z = true;
            }
            if (d3 == item.y) {
                z2 = z;
            } else {
                item.y = d3;
            }
            if (z2) {
                TextView textView = ((NewCollectItemQuxianBinding) holder.getViewBinding()).posTv;
                StringBuilder sb = new StringBuilder();
                sb.append((int) item.x);
                sb.append(',');
                sb.append((int) item.y);
                textView.setText(sb.toString());
                p0.a();
            }
        }
    }

    public final Function0<b> n() {
        return this.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.drakeet.multitype.c
    @SuppressLint({"SetTextI18n"})
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<NewCollectItemQuxianBinding> holder, final QuXianPositionVariable item) {
        r.e(holder, "holder");
        r.e(item, "item");
        this.c.f6658a = item;
        ((NewCollectItemQuxianBinding) holder.getViewBinding()).select.setOnCheckedChangeListener(null);
        ((NewCollectItemQuxianBinding) holder.getViewBinding()).posRangeEt.removeTextChangedListener(this.c);
        ((NewCollectItemQuxianBinding) holder.getViewBinding()).select.setChecked(item.enable);
        CheckBox checkBox = ((NewCollectItemQuxianBinding) holder.getViewBinding()).select;
        r.d(checkBox, "holder.viewBinding.select");
        p0.i(checkBox, new Function1<Boolean, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.QuXianPositionBinder$onBindViewHolder$1
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
        TextView textView = ((NewCollectItemQuxianBinding) holder.getViewBinding()).posTv;
        StringBuilder sb = new StringBuilder();
        sb.append((int) item.x);
        sb.append(',');
        sb.append((int) item.y);
        textView.setText(sb.toString());
        ((NewCollectItemQuxianBinding) holder.getViewBinding()).posRangeEt.setText(String.valueOf((int) item.radius));
        ((NewCollectItemQuxianBinding) holder.getViewBinding()).posRangeEt.addTextChangedListener(this.c);
        ((NewCollectItemQuxianBinding) holder.getViewBinding()).refresh.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                QuXianPositionBinder.q(this.f6710a, item, holder, view);
            }
        });
    }
}
