package cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder;

import android.annotation.SuppressLint;
import android.util.SparseArray;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.c;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.SerializableRect;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.KuWeiPoseVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.NewCollectItemKuweiBinding;
import cn.mucang.android.jiakaoyi.teachingk2.p0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0005\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0002\t\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005¢\u0006\u0002\u0010\u0007J\u001e\u0010\u0010\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u00132\u0006\u0010\u0014\u001a\u00020\u0002H\u0017J.\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u001a\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00022\b\u0010\u001d\u001a\u0004\u0018\u00010\u0006H\u0002R\u0010\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u0019\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0010\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000f¨\u0006\u001e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/KuWeiBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemKuweiBinding;", "getBoundary", "Lkotlin/Function0;", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "(Lkotlin/jvm/functions/Function0;)V", "degreeRangeWatcher", "cn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/KuWeiBinder$degreeRangeWatcher$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/KuWeiBinder$degreeRangeWatcher$1;", "getGetBoundary", "()Lkotlin/jvm/functions/Function0;", "rangeWatcher", "cn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/KuWeiBinder$rangeWatcher$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/KuWeiBinder$rangeWatcher$1;", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "rendRangeUI", "et", "Landroid/widget/EditText;", "watcher", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/VariableWatcher;", "isDegree", "", "updateCarPos", "boundary", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class KuWeiBinder extends ViewBindingBinder<KuWeiPoseVariable, NewCollectItemKuweiBinding> {
    private final Function0<cn.mucang.android.jiakaoyi.hpmap.a.a.b> b;
    private final b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f6701d;

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/KuWeiBinder$degreeRangeWatcher$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/VariableWatcher;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;", "textChanged", "", "v", "input", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b<KuWeiPoseVariable> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(KuWeiPoseVariable kuWeiPoseVariable, String str) {
            if (kuWeiPoseVariable == null) {
                return;
            }
            try {
                r.c(str);
                kuWeiPoseVariable.degreeRadius = Double.parseDouble(str);
            } catch (Exception unused) {
                u.h("设置失败，请输入数字");
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/KuWeiBinder$rangeWatcher$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/VariableWatcher;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;", "textChanged", "", "v", "input", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b<KuWeiPoseVariable> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(KuWeiPoseVariable kuWeiPoseVariable, String str) {
            if (kuWeiPoseVariable == null) {
                return;
            }
            try {
                kuWeiPoseVariable.range = SerializableRect.INSTANCE.b(str);
            } catch (Exception unused) {
                u.h("请输入0-500的整数");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public KuWeiBinder(Function0<? extends cn.mucang.android.jiakaoyi.hpmap.a.a.b> getBoundary) {
        r.e(getBoundary, "getBoundary");
        this.b = getBoundary;
        this.c = new b();
        this.f6701d = new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(KuWeiBinder this$0, KuWeiPoseVariable item, ViewBindingHolder holder, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        r.e(holder, "$holder");
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVarInvoke = this$0.n().invoke();
        if (bVarInvoke == null) {
            return;
        }
        this$0.s(item, bVarInvoke);
        TextView textView = ((NewCollectItemKuweiBinding) holder.getViewBinding()).posTv;
        StringBuilder sb = new StringBuilder();
        sb.append((int) item.x);
        sb.append(',');
        sb.append((int) item.y);
        textView.setText(sb.toString());
        TextView textView2 = ((NewCollectItemKuweiBinding) holder.getViewBinding()).angleTv;
        StringBuilder sb2 = new StringBuilder();
        sb2.append((int) item.degree);
        sb2.append((char) 176);
        textView2.setText(sb2.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void r(EditText editText, KuWeiPoseVariable kuWeiPoseVariable, cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.b<KuWeiPoseVariable> bVar, boolean z) {
        String rangeDesc;
        editText.removeTextChangedListener(bVar);
        if (z) {
            editText.setText(String.valueOf((int) kuWeiPoseVariable.degreeRadius));
        } else {
            SerializableRect serializableRect = kuWeiPoseVariable.range;
            String str = "";
            if (serializableRect != null && (rangeDesc = serializableRect.getRangeDesc()) != null) {
                str = rangeDesc;
            }
            editText.setText(str);
        }
        bVar.f6658a = kuWeiPoseVariable;
        editText.addTextChangedListener(bVar);
    }

    private final void s(KuWeiPoseVariable kuWeiPoseVariable, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        boolean z;
        if (bVar == null) {
            return;
        }
        e eVarT = d.t();
        r.d(eVarT, "signal()");
        CarPos carPosC = eVarT.c();
        if (carPosC == null) {
            return;
        }
        if (bVar instanceof c) {
            SparseArray<Pos> sparseArrayJ = ((c) bVar).j();
            z = sparseArrayJ.get(4).vectorTo(sparseArrayJ.get(3)).cross(sparseArrayJ.get(3).vectorTo(sparseArrayJ.get(6))) > 0.0d;
            Pos posA = cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.a(bVar).a(carPosC.center);
            r.d(posA, "coordinate.toLocal(carPos.center)");
            kuWeiPoseVariable.x = posA.x;
            kuWeiPoseVariable.y = posA.y;
            kuWeiPoseVariable.degree = ((double) (z ? 1 : -1)) * ((double) cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (((double) cn.mucang.android.jiakaoyi.signal.utils.d.c((float) carPosC.degree)) - Math.toDegrees(sparseArrayJ.get(4).angleTo(sparseArrayJ.get(3))))));
            p0.a();
            return;
        }
        if (bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) {
            SparseArray<Pos> sparseArrayJ2 = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) bVar).j();
            z = sparseArrayJ2.get(4).vectorTo(sparseArrayJ2.get(3)).cross(sparseArrayJ2.get(3).vectorTo(sparseArrayJ2.get(6))) > 0.0d;
            Pos posA2 = cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.a(bVar).a(carPosC.center);
            r.d(posA2, "coordinate.toLocal(carPos.center)");
            kuWeiPoseVariable.x = posA2.x;
            kuWeiPoseVariable.y = posA2.y;
            kuWeiPoseVariable.degree = ((double) (z ? 1 : -1)) * ((double) cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (((double) cn.mucang.android.jiakaoyi.signal.utils.d.c((float) carPosC.degree)) - Math.toDegrees(sparseArrayJ2.get(4).angleTo(sparseArrayJ2.get(3))))));
            p0.a();
        }
    }

    public final Function0<cn.mucang.android.jiakaoyi.hpmap.a.a.b> n() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    @SuppressLint({"SetTextI18n"})
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<NewCollectItemKuweiBinding> holder, final KuWeiPoseVariable item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((NewCollectItemKuweiBinding) holder.getViewBinding()).select.setOnCheckedChangeListener(null);
        ((NewCollectItemKuweiBinding) holder.getViewBinding()).select.setChecked(item.enable);
        CheckBox checkBox = ((NewCollectItemKuweiBinding) holder.getViewBinding()).select;
        r.d(checkBox, "holder.viewBinding.select");
        p0.i(checkBox, new Function1<Boolean, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.KuWeiBinder$onBindViewHolder$1
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
        TextView textView = ((NewCollectItemKuweiBinding) holder.getViewBinding()).posTv;
        StringBuilder sb = new StringBuilder();
        sb.append((int) item.x);
        sb.append(',');
        sb.append((int) item.y);
        textView.setText(sb.toString());
        TextView textView2 = ((NewCollectItemKuweiBinding) holder.getViewBinding()).angleTv;
        StringBuilder sb2 = new StringBuilder();
        sb2.append((int) item.degree);
        sb2.append((char) 176);
        textView2.setText(sb2.toString());
        EditText editText = ((NewCollectItemKuweiBinding) holder.getViewBinding()).posRangeEt;
        r.d(editText, "holder.viewBinding.posRangeEt");
        EditText editText2 = ((NewCollectItemKuweiBinding) holder.getViewBinding()).angleRangeEt;
        r.d(editText2, "holder.viewBinding.angleRangeEt");
        r(editText, item, this.c, false);
        r(editText2, item, this.f6701d, true);
        ((NewCollectItemKuweiBinding) holder.getViewBinding()).refresh.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                KuWeiBinder.q(this.f6709a, item, holder, view);
            }
        });
    }
}
