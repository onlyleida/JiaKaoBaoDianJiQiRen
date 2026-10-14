package cn.mucang.android.jiakaoyi.teachingk2.collect.render;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.ErrorItemBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.FootBrakeBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.LightBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.SelectLineBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.TurnHeadBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.WheelDegreeBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.CarAngleToLineBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.CarCrossLineBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.CarDistanceToLineBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.CarHeaderDistanceToLineBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.CarInRectBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.WheelCrossLineBinder;
import cn.mucang.android.jiakaoyi.teachingk2.data.ErrorModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.Relation;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarAngleToLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarCrossLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarCrossRectVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarDistanceToLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarHeaderDistanceToLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarInRectVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.DelayDistanceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.DelayTimeVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.FootBrakeVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.LightVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.RepeatVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TurnHeadVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.WheelCrossLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.WheelCrossOverLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.WheelDegreeVariable;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.FragmentCollectErrorsBinding;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\b\u0010\u0012\u001a\u00020\u000eH\u0002J\u0012\u0010\u0013\u001a\u00020\u000e2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J8\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u0011H\u0002J\u001a\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020 2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J\b\u0010!\u001a\u00020\"H\u0002J,\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110$2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00150%2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J\n\u0010&\u001a\u0004\u0018\u00010'H\u0002J\b\u0010(\u001a\u00020\u000bH\u0016J$\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010.2\b\u0010/\u001a\u0004\u0018\u000100H\u0016J\u001a\u00101\u001a\u00020\u000e2\u0006\u00102\u001a\u00020*2\b\u0010/\u001a\u0004\u0018\u000100H\u0016J\u0014\u00103\u001a\u00020\u000e2\n\b\u0002\u00104\u001a\u0004\u0018\u000105H\u0002J\u0010\u00106\u001a\u00020\u000e2\u0006\u00107\u001a\u00020\u0015H\u0002J\u0012\u00108\u001a\u00020\u000e2\b\u00104\u001a\u0004\u0018\u00010\bH\u0002J\u0010\u00109\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u000205H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\f¨\u0006:"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/ErrorFragment;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseFragment;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "binding", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsBinding;", "data", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "types", "", "", "[Ljava/lang/String;", "addErrors", "", "list", "", "", "addOneError", "addSelect", "error", "", "addStop", "startIndex", "endIndex", "voice", "min", "", "max", "type", "addVariable", "variable", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;", "canShowStop", "", "findOneModelIndex", "Lkotlin/Pair;", "", "getBoundary", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "getStatName", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "view", "refreshList", "model", "Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;", "removeItem", "any", "setData", "setDelay", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ErrorFragment extends cn.mucang.android.jiakaoyi.framework.base.m.b {
    private final com.drakeet.multitype.f b;
    private TeachModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private FragmentCollectErrorsBinding f6539d;

    public ErrorFragment() {
        this.b = new com.drakeet.multitype.f(null, 0, null, 7, null);
    }

    private final void A(int r6, int r7, String r8, float r9, float r10, int r11) {
        TeachModel r0 = this.c;
        if (r0 == null) goto L23;
        List<ErrorModel> r1 = r0.errors;
        if (r1 == null) goto L24;
        ErrorModel r12 = ErrorModel.create(r11);
        kotlin.jvm.internal.r.d(r12, "this");
        P(r12);
        FormModel r2 = r12.errorForm;
        if ((r2 instanceof VoiceModel) == false) goto L11;
        VoiceModel r3 = (VoiceModel) r2;
    L12:
        if (r3 == null) goto L16;
        r3.voice = r8;
    L16:
        if (r9 <= BitmapDescriptorFactory.HUE_RED) goto L19;
        r12.errorVariables.add(new CarDistanceToLineVariable(r6, r7, r9, Relation.BigThan));
    L19:
        if (r10 <= BitmapDescriptorFactory.HUE_RED) goto L21;
        r12.errorVariables.add(new CarDistanceToLineVariable(r6, r7, r10, Relation.SmallThan));
    L21:
        kotlin.v r13 = kotlin.v.f15822a;
        r1.add(0, r12);
        return;
    L11:
        r3 = null;
        goto L12
    L24:
        return;
    }

    private final void B(Variable r8, Object r9) {
        boolean r0 = r9 instanceof ErrorModel;
        if (r0 == false) goto L5;
        ErrorModel r2 = (ErrorModel) r9;
    L6:
        if (r2 == null) goto L9;
        r2.hasSelect = false;
    L9:
        List<Object> r3 = kotlin.jvm.internal.z.c(this.b.c());
        Pair<Integer, Integer> r4 = D(r3, r9);
        int r5 = r4.component1().intValue();
        int r6 = r4.component2().intValue();
        if (r5 > r6) goto L35;
    L11:
        int r7 = r6 - 1;
        if ((r3.get(r6) instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.a) == true) goto L13;
        if (r6 == r5) goto L38;
        r6 = r7;
        goto L11
    L38:
        return;
    L13:
        int r10 = r6 + 1;
        if ((kotlin.collections.s.f0(r3, r10) instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.e) == false) goto L16;
        r3.set(r10, r8);
    L17:
        if (r0 == false) goto L19;
        ErrorModel r11 = (ErrorModel) r9;
    L20:
        if (r11 == null) goto L26;
        List<Variable> r12 = r11.errorVariables;
        if (r12 == null) goto L26;
        r12.add(r8);
    L26:
        this.b.notifyDataSetChanged();
        FragmentCollectErrorsBinding r13 = this.f6539d;
        if (r13 == null) goto L30;
        r13.errorRv.scrollToPosition(r10);
        return;
    L30:
        kotlin.jvm.internal.r.u("binding");
        throw null;
    L19:
        r11 = null;
        goto L20
    L16:
        r3.add(r10, r8);
        goto L17
    L35:
        return;
    L5:
        r2 = null;
        goto L6
    }

    private final boolean C() {
        TeachModel r0 = this.c;
        if (r0 != null) goto L6;
    L4:
        boolean r3 = false;
    L9:
        if (r3 == false) goto L29;
        if (r0 != null) goto L13;
    L11:
        boolean r4 = false;
    L15:
        if (r4 == true) goto L28;
        if (r0 != null) goto L19;
    L17:
        boolean r5 = false;
    L21:
        if (r5 == true) goto L28;
        if (r0 != null) goto L25;
    L23:
        boolean r6 = false;
    L27:
        if (r6 == false) goto L29;
    L25:
        if (r0.subStep != 4) goto L23;
        r6 = true;
        goto L27
    L19:
        if (r0.subStep != 2) goto L17;
        r5 = true;
    L28:
        return true;
    L13:
        if (r0.subStep != 1) goto L11;
        r4 = true;
    L29:
        if (r0 != null) goto L32;
    L30:
        boolean r7 = false;
    L34:
        if (r7 == false) goto L48;
        if (r0 != null) goto L38;
    L36:
        boolean r8 = false;
    L40:
        if (r8 == true) goto L47;
        if (r0 != null) goto L44;
    L42:
        boolean r1 = false;
    L46:
        if (r1 == false) goto L48;
    L44:
        if (r0.subStep != 2) goto L42;
        r1 = true;
    L47:
        return true;
    L38:
        if (r0.subStep != 1) goto L36;
        r8 = true;
    L48:
        return false;
    L32:
        if (r0.step != Step.K2_CeFangTingChe.type) goto L30;
        r7 = true;
        goto L34
    L6:
        if (r0.step != Step.K2_DaoCheRuKu.type) goto L4;
        r3 = true;
        goto L9
    }

    private final Pair<Integer, Integer> D(List<Object> r9, Object r10) {
        int r0 = r9.size();
        int r1 = Integer.MIN_VALUE;
        int r2 = Integer.MAX_VALUE;
        if (r0 <= 0) goto L17;
        int r3 = 0;
        int r4 = Integer.MIN_VALUE;
    L5:
        int r5 = r3 + 1;
        Object r6 = r9.get(r3);
        if (r4 == Integer.MIN_VALUE) goto L8;
    L10:
        if (r4 != Integer.MIN_VALUE) goto L12;
    L14:
        if (r5 >= r0) goto L15;
        r3 = r5;
    L15:
        r1 = r4;
        goto L17
    L12:
        if ((r6 instanceof ErrorModel) == false) goto L14;
        r2 = r3;
        goto L15
    L8:
        if (kotlin.jvm.internal.r.a(r6, r10) == false) goto L10;
        r4 = r3;
    L17:
        int r11 = kotlin.a0.d.e(r2, kotlin.collections.s.l(r9));
        return new Pair(Integer.valueOf(r1), Integer.valueOf(r11));
    }

    private final cn.mucang.android.jiakaoyi.hpmap.a.a.b E() {
        TeachModel r0 = this.c;
        if (r0 == null) goto L63;
        Step r1 = Step.findWithType(r0.step);
        if (r1 != Step.K2_DaoCheRuKu) goto L11;
        cn.mucang.android.jiakaoyi.hpmap.a.a.b r2 = r0.boundary;
        if ((r2 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) == false) goto L60;
        return r2;
    L60:
        cn.mucang.android.core.utils.u.h("请驶入" + r1.zhStepName + "项目");
        return null;
    L11:
        if (r1 != Step.K2_SQuXian) goto L16;
        cn.mucang.android.jiakaoyi.hpmap.a.a.b r3 = r0.boundary;
        if ((r3 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.j) == false) goto L60;
        return r3;
    L16:
        if (r1 != Step.K2_ZhiJiaoZhuanWan) goto L21;
        cn.mucang.android.jiakaoyi.hpmap.a.a.b r4 = r0.boundary;
        if ((r4 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.o) == false) goto L60;
        return r4;
    L21:
        if (r1 != Step.K2_ShangPoQiBu) goto L26;
        cn.mucang.android.jiakaoyi.hpmap.a.a.b r5 = r0.boundary;
        if ((r5 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.k) == false) goto L60;
        return r5;
    L26:
        if (r1 != Step.K2_CeFangTingChe) goto L31;
        cn.mucang.android.jiakaoyi.hpmap.a.a.b r6 = r0.boundary;
        if ((r6 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) == false) goto L60;
        return r6;
    L31:
        if (r1 != Step.K2_ShiHuaLuMian) goto L36;
        cn.mucang.android.jiakaoyi.hpmap.a.a.b r7 = r0.boundary;
        if ((r7 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.f) == false) goto L60;
        return r7;
    L36:
        if (r1 != Step.K2_SuiDao) goto L41;
        cn.mucang.android.jiakaoyi.hpmap.a.a.b r8 = r0.boundary;
        if ((r8 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.l) == false) goto L60;
        return r8;
    L41:
        if (r1 != Step.K2_JinJiQingKuang) goto L46;
        cn.mucang.android.jiakaoyi.hpmap.a.a.b r9 = r0.boundary;
        if ((r9 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.g) == false) goto L60;
        return r9;
    L46:
        if (r1 != Step.K2_ETC) goto L51;
        cn.mucang.android.jiakaoyi.hpmap.a.a.b r10 = r0.boundary;
        if ((r10 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.e) == false) goto L60;
        return r10;
    L51:
        if (r1 != Step.K2_ZhaiLuDiaoTou) goto L56;
        cn.mucang.android.jiakaoyi.hpmap.a.a.b r11 = r0.boundary;
        if ((r11 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.n) == false) goto L60;
        return r11;
    L56:
        if (r1 != Step.K2_QuKa) goto L60;
        cn.mucang.android.jiakaoyi.hpmap.a.a.b r12 = r0.boundary;
        if ((r12 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.i) == false) goto L60;
        return r12;
    L63:
        return null;
    }

    public static /* synthetic */ void F(ErrorFragment r0, f2.f r1) {
        J(r0, r1);
    }

    public static /* synthetic */ void G(ErrorFragment r0, TeachModel r1) {
        K(r0, r1);
    }

    public static /* synthetic */ void H(ErrorFragment r0, View r1) {
        I(r0, r1);
    }

    private static final void I(ErrorFragment r0, View r1) {
        kotlin.jvm.internal.r.e(r0, "this$0");
        r0.y();
    }

    private static final void J(ErrorFragment r1, f2.f r2) {
        kotlin.jvm.internal.r.e(r1, "this$0");
        kotlin.jvm.internal.r.e(r2, "data");
        r1.O(r2.f6622a);
    }

    private static final void K(ErrorFragment r1, TeachModel r2) {
        kotlin.jvm.internal.r.e(r1, "this$0");
        TeachModel r3 = r1.c;
        if (r3 == null) goto L7;
        r3.boundary = r2.boundary;
        return;
    }

    private final void L(ErrorModel r5) {
        TeachModel r0 = this.c;
        if (r0 == null) goto L9;
        List<ErrorModel> r1 = r0.errors;
        if (r1 == null) goto L9;
        r1.remove(r5);
    L9:
        ArrayList r6 = new ArrayList();
        TeachModel r2 = this.c;
        if (r2 == null) goto L23;
        List<ErrorModel> r3 = r2.errors;
        if (r3 == null) goto L23;
        Iterator<T> r4 = r3.iterator();
    L17:
        if (r4.hasNext() == false) goto L23;
        ErrorModel r7 = (ErrorModel) r4.next();
        kotlin.jvm.internal.r.d(r7, "it");
        TeachModel r8 = this.c;
        if (r8 != null) goto L21;
        int r9 = 0;
    L22:
        Step r10 = Step.findWithType(r9);
        kotlin.jvm.internal.r.d(r10, "findWithType(data?.step ?: 0)");
        cn.mucang.android.jiakaoyi.teachingk2.p0.b(r7, r6, r10);
        goto L17
    L21:
        r9 = r8.step;
    L23:
        this.b.i(r6);
        this.b.notifyDataSetChanged();
    }

    static /* synthetic */ void M(ErrorFragment r0, ErrorModel r1, int r2, Object r3) {
        if ((r2 & 1) == 0) goto L5;
        r1 = null;
    L5:
        r0.L(r1);
    }

    private final void N(Object r7) {
        TeachModel r0 = this.c;
        if (r0 == null) goto L31;
        List<ErrorModel> r1 = r0.errors;
        if (r1 == null) goto L31;
        Iterator<T> r2 = r1.iterator();
    L10:
        if (r2.hasNext() == false) goto L31;
        ErrorModel r3 = (ErrorModel) r2.next();
        List<Variable> r4 = r3.stopVariables;
        boolean r5 = true;
        if (r4 != null) goto L15;
    L13:
        boolean r6 = false;
    L17:
        if (r6 == false) goto L19;
        List<Variable> r8 = r3.stopVariables;
        kotlin.jvm.internal.r.d(r8, "it.stopVariables");
        kotlin.jvm.internal.z.a(r8).remove(r7);
    L19:
        List<Variable> r9 = r3.errorVariables;
        if (r9 != null) goto L23;
    L21:
        r5 = false;
    L24:
        if (r5 == false) goto L27;
        List<Variable> r10 = r3.errorVariables;
        kotlin.jvm.internal.r.d(r10, "it.errorVariables");
        kotlin.jvm.internal.z.a(r10).remove(r7);
    L27:
        if ((r7 instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.e) == false) goto L10;
        if (kotlin.jvm.internal.r.a(((cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.e) r7).b, r3) == false) goto L10;
        r3.hasSelect = false;
        goto L10
    L23:
        if (kotlin.collections.s.S(r9, r7) != true) goto L21;
    L15:
        if (kotlin.collections.s.S(r4, r7) != true) goto L13;
        r6 = true;
    L31:
        kotlin.jvm.internal.z.c(this.b.c()).remove(r7);
        this.b.notifyDataSetChanged();
    }

    private final void O(TeachModel r3) {
        this.c = r3;
        if (r3 != null) goto L5;
    L4:
        ErrorModel r4 = null;
    L10:
        if (r4 == null) goto L13;
        r4.expand = true;
    L13:
        M(this, null, 1, null);
        return;
    L5:
        List<ErrorModel> r5 = r3.errors;
        if (r5 == null) goto L4;
        r4 = (ErrorModel) kotlin.collections.s.e0(r5);
        goto L10
    }

    private final void P(ErrorModel r4) {
        List<Variable> r5 = r4.stopVariables;
        kotlin.jvm.internal.r.d(r5, "error.stopVariables");
        Iterator<T> r6 = r5.iterator();
    L4:
        if (r6.hasNext() == false) goto L12;
        Variable r0 = (Variable) r6.next();
        if ((r0 instanceof DelayTimeVariable) == false) goto L4;
        ((DelayTimeVariable) r0).delayTime = 3000;
        return;
    }

    public static final /* synthetic */ void r(ErrorFragment r0, List r1) {
        r0.x(r1);
    }

    public static final /* synthetic */ void s(ErrorFragment r0, Object r1) {
        r0.z(r1);
    }

    public static final /* synthetic */ void t(ErrorFragment r0, Variable r1, Object r2) {
        r0.B(r1, r2);
    }

    public static final /* synthetic */ cn.mucang.android.jiakaoyi.hpmap.a.a.b u(ErrorFragment r0) {
        return r0.E();
    }

    public static final /* synthetic */ void v(ErrorFragment r0, ErrorModel r1) {
        r0.L(r1);
    }

    public static final /* synthetic */ void w(ErrorFragment r0, Object r1) {
        r0.N(r1);
    }

    private final void x(List<Integer> r20) {
        TeachModel r0 = this.c;
        if (r0 != null) goto L6;
    L4:
        boolean r2 = false;
    L8:
        String r6 = "this";
        if (r2 == false) goto L57;
        if (r0 != null) goto L13;
    L11:
        boolean r3 = false;
    L15:
        if (r3 == true) goto L17;
        r6 = "this";
        if (r0 != null) goto L34;
        boolean r4 = false;
    L37:
        if (r4 == true) goto L45;
        if (r0 != null) goto L41;
    L39:
        boolean r1 = false;
    L43:
        if (r1 == true) goto L45;
    L115:
        int r5 = -1;
        if (r20.contains(5) == false) goto L140;
        TeachModel r7 = this.c;
        if (r7 == null) goto L140;
        List<ErrorModel> r8 = r7.errors;
        if (r8 == null) goto L140;
        ErrorModel r9 = ErrorModel.create(5);
        kotlin.jvm.internal.r.d(r9, r6);
        P(r9);
        FormModel r10 = r9.errorForm;
        if ((r10 instanceof VoiceModel) == false) goto L126;
        VoiceModel r11 = (VoiceModel) r10;
    L127:
        if (r11 == null) goto L130;
        r11.voice = "未开转向灯";
    L130:
        List<Variable> r12 = r9.errorVariables;
        kotlin.jvm.internal.r.d(r12, "errorVariables");
        Iterator<Variable> r13 = r12.iterator();
        int r14 = 0;
    L132:
        if (r13.hasNext() == false) goto L137;
        if ((r13.next() instanceof LightVariable) == true) goto L138;
        r14 = r14 + 1;
    L138:
        r9.errorVariables.set(r14, new LightVariable(Light.Off.lightId));
        kotlin.v r15 = kotlin.v.f15822a;
        r8.add(0, r9);
        goto L140
    L137:
        r14 = -1;
        goto L138
    L126:
        r11 = null;
    L140:
        if (r20.contains(6) == false) goto L164;
        TeachModel r16 = this.c;
        if (r16 == null) goto L164;
        List<ErrorModel> r17 = r16.errors;
        if (r17 == null) goto L164;
        ErrorModel r18 = ErrorModel.create(6);
        kotlin.jvm.internal.r.d(r18, r6);
        P(r18);
        FormModel r19 = r18.errorForm;
        if ((r19 instanceof VoiceModel) == false) goto L150;
        VoiceModel r21 = (VoiceModel) r19;
    L151:
        if (r21 == null) goto L154;
        r21.voice = "转向灯错误";
    L154:
        List<Variable> r22 = r18.errorVariables;
        kotlin.jvm.internal.r.d(r22, "errorVariables");
        Iterator<Variable> r23 = r22.iterator();
        int r24 = 0;
    L156:
        if (r23.hasNext() == false) goto L161;
        if ((r23.next() instanceof LightVariable) == true) goto L162;
        r24 = r24 + 1;
    L162:
        r18.errorVariables.set(r24, new LightVariable(Light.TurnRightLight.lightId));
        kotlin.v r25 = kotlin.v.f15822a;
        r17.add(0, r18);
        goto L164
    L161:
        r24 = -1;
        goto L162
    L150:
        r21 = null;
    L164:
        if (r20.contains(7) == false) goto L188;
        TeachModel r26 = this.c;
        if (r26 == null) goto L188;
        List<ErrorModel> r27 = r26.errors;
        if (r27 == null) goto L188;
        ErrorModel r28 = ErrorModel.create(7);
        kotlin.jvm.internal.r.d(r28, r6);
        P(r28);
        FormModel r29 = r28.errorForm;
        if ((r29 instanceof VoiceModel) == false) goto L174;
        VoiceModel r30 = (VoiceModel) r29;
    L175:
        if (r30 == null) goto L178;
        r30.voice = "未及时刹车";
    L178:
        List<Variable> r31 = r28.errorVariables;
        kotlin.jvm.internal.r.d(r31, "errorVariables");
        Iterator<Variable> r32 = r31.iterator();
        int r33 = 0;
    L180:
        if (r32.hasNext() == false) goto L185;
        if ((r32.next() instanceof FootBrakeVariable) == true) goto L186;
        r33 = r33 + 1;
    L186:
        r28.errorVariables.set(r33, new FootBrakeVariable(true));
        kotlin.v r34 = kotlin.v.f15822a;
        r27.add(0, r28);
        goto L188
    L185:
        r33 = -1;
        goto L186
    L174:
        r30 = null;
    L188:
        if (r20.contains(8) == false) goto L212;
        TeachModel r35 = this.c;
        if (r35 == null) goto L212;
        List<ErrorModel> r36 = r35.errors;
        if (r36 == null) goto L212;
        ErrorModel r37 = ErrorModel.create(8);
        kotlin.jvm.internal.r.d(r37, r6);
        P(r37);
        r37.checkType = 1;
        r37.isRightCheck = true;
        FormModel r38 = r37.errorForm;
        if ((r38 instanceof VoiceModel) == false) goto L198;
        VoiceModel r39 = (VoiceModel) r38;
    L199:
        if (r39 == null) goto L202;
        r39.voice = "请按教学往前看";
    L202:
        List<Variable> r40 = r37.errorVariables;
        kotlin.jvm.internal.r.d(r40, "errorVariables");
        Iterator<Variable> r41 = r40.iterator();
        int r42 = 0;
    L204:
        if (r41.hasNext() == false) goto L209;
        if ((r41.next() instanceof TurnHeadVariable) == true) goto L210;
        r42 = r42 + 1;
    L210:
        r37.errorVariables.set(r42, new TurnHeadVariable(0));
        kotlin.v r43 = kotlin.v.f15822a;
        r36.add(0, r37);
        goto L212
    L209:
        r42 = -1;
        goto L210
    L198:
        r39 = null;
    L212:
        if (r20.contains(9) == false) goto L236;
        TeachModel r44 = this.c;
        if (r44 == null) goto L236;
        List<ErrorModel> r45 = r44.errors;
        if (r45 == null) goto L236;
        ErrorModel r46 = ErrorModel.create(9);
        kotlin.jvm.internal.r.d(r46, r6);
        P(r46);
        r46.checkType = 1;
        r46.isRightCheck = true;
        FormModel r47 = r46.errorForm;
        if ((r47 instanceof VoiceModel) == false) goto L222;
        VoiceModel r48 = (VoiceModel) r47;
    L223:
        if (r48 == null) goto L226;
        r48.voice = "请按教学指示看左后视镜点位";
    L226:
        List<Variable> r49 = r46.errorVariables;
        kotlin.jvm.internal.r.d(r49, "errorVariables");
        Iterator<Variable> r50 = r49.iterator();
        int r51 = 0;
    L228:
        if (r50.hasNext() == false) goto L233;
        if ((r50.next() instanceof TurnHeadVariable) == true) goto L234;
        r51 = r51 + 1;
    L234:
        r46.errorVariables.set(r51, new TurnHeadVariable(1));
        kotlin.v r52 = kotlin.v.f15822a;
        r45.add(0, r46);
        goto L236
    L233:
        r51 = -1;
        goto L234
    L222:
        r48 = null;
    L236:
        if (r20.contains(10) == false) goto L258;
        TeachModel r53 = this.c;
        if (r53 == null) goto L258;
        List<ErrorModel> r54 = r53.errors;
        if (r54 == null) goto L258;
        ErrorModel r55 = ErrorModel.create(9);
        kotlin.jvm.internal.r.d(r55, r6);
        P(r55);
        r55.checkType = 1;
        r55.isRightCheck = true;
        FormModel r56 = r55.errorForm;
        if ((r56 instanceof VoiceModel) == false) goto L246;
        VoiceModel r57 = (VoiceModel) r56;
    L247:
        if (r57 == null) goto L250;
        r57.voice = "请按教学指示看右后视镜点位";
    L250:
        List<Variable> r58 = r55.errorVariables;
        kotlin.jvm.internal.r.d(r58, "errorVariables");
        Iterator<Variable> r59 = r58.iterator();
        int r60 = 0;
    L252:
        if (r59.hasNext() == false) goto L257;
        if ((r59.next() instanceof TurnHeadVariable) == true) goto L255;
        r60 = r60 + 1;
        goto L252
    L255:
        r5 = r60;
    L257:
        r55.errorVariables.set(r5, new TurnHeadVariable(2));
        kotlin.v r61 = kotlin.v.f15822a;
        int r62 = 0;
        r54.add(0, r55);
    L260:
        if (r20.contains(Integer.valueOf(r62)) == false) goto L268;
        TeachModel r63 = this.c;
        if (r63 == null) goto L268;
        List<ErrorModel> r64 = r63.errors;
        if (r64 == null) goto L268;
        r64.add(r62, ErrorModel.create(r62));
        kotlin.v r65 = kotlin.v.f15822a;
    L268:
        M(this, null, 1, null);
        cn.mucang.android.jiakaoyi.teachingk2.p0.a();
        return;
    L246:
        r57 = null;
    L258:
        r62 = 0;
        goto L260
    L41:
        if (r0.subStep != 4) goto L39;
        r1 = true;
    L45:
        if (r20.contains(1) == false) goto L47;
        int r110 = 2;
        A(3, 4, "停车位置偏左", 85.0f, 107.0f, 1);
    L49:
        if (r20.contains(Integer.valueOf(r110)) == false) goto L52;
        A(5, 6, "停车位置偏右", 85.0f, 107.0f, 2);
    L52:
        if (r20.contains(3) == false) goto L55;
        A(3, 4, "停车位置不合适，请开到起点重新练习", BitmapDescriptorFactory.HUE_RED, 85.0f, 3);
    L55:
        if (r20.contains(4) == false) goto L115;
        A(5, 6, "停车位置不合适，请开到起点重新练习", BitmapDescriptorFactory.HUE_RED, 85.0f, 4);
        goto L115
    L47:
        r110 = 2;
        goto L49
    L34:
        if (r0.subStep != 2) goto L36;
        r4 = true;
        goto L37
    L36:
        r4 = false;
        goto L37
    L17:
        if (r20.contains(1) == false) goto L19;
        int r111 = 2;
        A(1, 8, "停车位置偏左", 190.0f, 225.0f, 1);
    L21:
        if (r20.contains(Integer.valueOf(r111)) == false) goto L24;
        A(1, 8, "停车位置偏右", 245.0f, 370.0f, 2);
    L24:
        if (r20.contains(3) == false) goto L27;
        A(1, 8, "停车位置不合适，请开到起点重新练习", BitmapDescriptorFactory.HUE_RED, 190.0f, 3);
    L27:
        if (r20.contains(4) == false) goto L115;
        A(1, 8, "停车位置不合适，请开到起点重新练习", 370.0f, BitmapDescriptorFactory.HUE_RED, 4);
        goto L115
    L19:
        r111 = 2;
        goto L21
    L13:
        if (r0.subStep != 1) goto L11;
        r3 = true;
        goto L15
    L57:
        r6 = "this";
        if (r0 != null) goto L61;
    L59:
        boolean r66 = false;
    L63:
        if (r66 == false) goto L115;
        if (r0 != null) goto L67;
    L65:
        boolean r67 = false;
    L69:
        if (r67 == true) goto L71;
        if (r0 != null) goto L98;
        boolean r68 = false;
    L101:
        if (r68 == false) goto L115;
        if (r20.contains(1) == false) goto L105;
        int r112 = 2;
        A(3, 6, "停车位置偏左", 85.0f, 107.0f, 1);
    L107:
        if (r20.contains(Integer.valueOf(r112)) == false) goto L110;
        A(4, 5, "停车位置偏右", 85.0f, 107.0f, 2);
    L110:
        if (r20.contains(3) == false) goto L113;
        A(3, 6, "停车位置不合适，请开到起点重新练习", BitmapDescriptorFactory.HUE_RED, 85.0f, 3);
    L113:
        if (r20.contains(4) == false) goto L115;
        A(4, 5, "停车位置不合适，请开到起点重新练习", BitmapDescriptorFactory.HUE_RED, 85.0f, 4);
        goto L115
    L105:
        r112 = 2;
        goto L107
    L98:
        if (r0.subStep != 2) goto L100;
        r68 = true;
        goto L101
    L100:
        r68 = false;
        goto L101
    L71:
        if (r20.contains(1) == false) goto L87;
        TeachModel r69 = this.c;
        if (r69 == null) goto L87;
        List<ErrorModel> r70 = r69.errors;
        if (r70 == null) goto L87;
        ErrorModel r71 = ErrorModel.create(1);
        kotlin.jvm.internal.r.d(r71, r6);
        P(r71);
        FormModel r72 = r71.errorForm;
        if ((r72 instanceof VoiceModel) == false) goto L81;
        VoiceModel r73 = (VoiceModel) r72;
    L82:
        if (r73 == null) goto L85;
        r73.voice = "停车位置偏左";
    L85:
        List<Variable> r74 = r71.errorVariables;
        Relation r75 = Relation.BigThan;
        r74.add(new CarDistanceToLineVariable(1, 8, 165.0f, r75));
        r71.errorVariables.add(new CarDistanceToLineVariable(6, 7, 125.0f, r75));
        kotlin.v r76 = kotlin.v.f15822a;
        r70.add(0, r71);
        goto L87
    L81:
        r73 = null;
    L87:
        if (r20.contains(2) == false) goto L90;
        A(6, 7, "停车位置偏右", 95.0f, 105.0f, 2);
    L90:
        if (r20.contains(3) == false) goto L93;
        A(1, 8, "停车位置不合适，请开到起点重新练习", BitmapDescriptorFactory.HUE_RED, 165.0f, 3);
    L93:
        if (r20.contains(4) == false) goto L115;
        A(6, 7, "停车位置不合适，请开到起点重新练习", BitmapDescriptorFactory.HUE_RED, 95.0f, 4);
        goto L115
    L67:
        if (r0.subStep != 1) goto L65;
        r67 = true;
        goto L69
    L61:
        if (r0.step != Step.K2_CeFangTingChe.type) goto L59;
        r66 = true;
        goto L63
    L6:
        if (r0.step != Step.K2_DaoCheRuKu.type) goto L4;
        r2 = true;
        goto L8
    }

    private final void y() {
        TeachModel r0 = this.c;
        if (r0 != null) goto L5;
        List<ErrorModel> r1 = null;
    L6:
        if (r1 != null) goto L10;
        if (r0 == null) goto L10;
        r0.errors = new ArrayList();
    L10:
        androidx.fragment.app.d r2 = getActivity();
        kotlin.jvm.internal.r.c(r2);
        kotlin.jvm.internal.r.d(r2, "activity!!");
        new g2(r2, C(), new ErrorFragment$addOneError$1(this)).show();
        return;
    L5:
        r1 = r0.errors;
        goto L6
    }

    private final void z(Object r9) {
        if ((r9 instanceof ErrorModel) == false) goto L5;
        ErrorModel r0 = (ErrorModel) r9;
    L6:
        if (r0 == null) goto L9;
        r0.hasSelect = true;
    L9:
        List<Object> r1 = kotlin.jvm.internal.z.c(this.b.c());
        Pair<Integer, Integer> r2 = D(r1, r9);
        int r3 = r2.component1().intValue();
        int r4 = r2.component2().intValue();
        if (r3 > r4) goto L28;
    L11:
        int r5 = r4 - 1;
        if ((r1.get(r4) instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.a) == false) goto L25;
        int r6 = r4 + 1;
        if ((kotlin.collections.s.f0(r1, r6) instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.e) == true) goto L15;
        TeachModel r7 = this.c;
        if (r7 != null) goto L19;
        int r8 = 0;
    L20:
        cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.e r10 = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.e(Step.findWithType(r8));
        r10.b = r9;
        r1.add(r6, r10);
        this.b.notifyDataSetChanged();
        FragmentCollectErrorsBinding r11 = this.f6539d;
        if (r11 == null) goto L23;
        r11.errorRv.scrollToPosition(r6);
        goto L25
    L23:
        kotlin.jvm.internal.r.u("binding");
        throw null;
    L19:
        r8 = r7.step;
        goto L20
    L15:
        return;
    L25:
        if (r4 == r3) goto L32;
        r4 = r5;
        goto L11
    L32:
        return;
    L28:
        return;
    L5:
        r0 = null;
        goto L6
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "错误检测页面";
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater r5, ViewGroup r6, Bundle r7) {
        kotlin.jvm.internal.r.e(r5, "inflater");
        FragmentCollectErrorsBinding r8 = FragmentCollectErrorsBinding.inflate(r5);
        kotlin.jvm.internal.r.d(r8, "inflate(inflater)");
        this.f6539d = r8;
        if (r8 == null) goto L18;
        r8.errorRv.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        FragmentCollectErrorsBinding r9 = this.f6539d;
        if (r9 == null) goto L16;
        r9.addIv.setOnClickListener(new i0(this));
        this.b.g(ErrorModel.class, new ErrorItemBinder(new AnonymousClass2(this)));
        this.b.g(cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.d.class, new SelectLineBinder(new AnonymousClass3(this)));
        this.b.g(RepeatVariable.class, new cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.h());
        this.b.g(DelayTimeVariable.class, new cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.g());
        this.b.g(DelayDistanceVariable.class, new cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.f());
        this.b.g(WheelDegreeVariable.class, new WheelDegreeBinder());
        this.b.g(LightVariable.class, new LightBinder());
        this.b.g(FootBrakeVariable.class, new FootBrakeBinder());
        this.b.g(TurnHeadVariable.class, new TurnHeadBinder());
        this.b.g(cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.a.class, new cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.o(new AnonymousClass4(this)));
        this.b.g(CarAngleToLineVariable.class, new CarAngleToLineBinder(new AnonymousClass5(this), new AnonymousClass6(this)));
        this.b.g(CarCrossLineVariable.class, new CarCrossLineBinder(new AnonymousClass7(this)));
        this.b.g(CarCrossRectVariable.class, new cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.p(new AnonymousClass8(this)));
        this.b.g(CarDistanceToLineVariable.class, new CarDistanceToLineBinder(new AnonymousClass9(this), new AnonymousClass10(this)));
        this.b.g(CarHeaderDistanceToLineVariable.class, new CarHeaderDistanceToLineBinder(new AnonymousClass11(this), new AnonymousClass12(this)));
        this.b.g(CarInRectVariable.class, new CarInRectBinder(new AnonymousClass13(this)));
        this.b.g(WheelCrossLineVariable.class, new WheelCrossLineBinder(new AnonymousClass14(this)));
        this.b.g(WheelCrossOverLineVariable.class, new cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.r(new AnonymousClass15(this)));
        this.b.g(cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.e.class, new cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.binder.q(new AnonymousClass16(this), new AnonymousClass17(this), new AnonymousClass18(this)));
        FragmentCollectErrorsBinding r10 = this.f6539d;
        if (r10 == null) goto L14;
        r10.errorRv.setAdapter(this.b);
        FragmentCollectErrorsBinding r11 = this.f6539d;
        if (r11 == null) goto L12;
        ConstraintLayout r12 = r11.getRoot();
        kotlin.jvm.internal.r.d(r12, "binding.root");
        return r12;
    L12:
        kotlin.jvm.internal.r.u("binding");
        throw null;
    L14:
        kotlin.jvm.internal.r.u("binding");
        throw null;
    L16:
        kotlin.jvm.internal.r.u("binding");
        throw null;
    L18:
        kotlin.jvm.internal.r.u("binding");
        throw null;
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onViewCreated(View r3, Bundle r4) {
        kotlin.jvm.internal.r.e(r3, "view");
        super.onViewCreated(r3, r4);
        androidx.lifecycle.c r5 = LiveBus.d(f2.f.class);
        androidx.lifecycle.r r6 = getViewLifecycleOwner();
        kotlin.jvm.internal.r.d(r6, "viewLifecycleOwner");
        r5.h(r6, new g0(this));
        androidx.lifecycle.c r7 = LiveBus.d(TeachModel.class);
        androidx.lifecycle.r r8 = getViewLifecycleOwner();
        kotlin.jvm.internal.r.d(r8, "viewLifecycleOwner");
        r7.h(r8, new h0(this));
    }
}
