package cn.mucang.android.jiakaoyi.teachingk2.collect.render;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.BusLiveData;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseFragment;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.AddBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.CarAngleToLineBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.CarCrossLineBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.CarCrossRectBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.CarDistanceToLineBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.CarHeaderDistanceToLineBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.CarInRectBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.DirectionBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.GearBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.HandBrakeBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.HouLiuBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.KuWeiBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.QuXianPositionBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.SelectBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.SpeedBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.WheelCrossLineBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.WheelCrossOverLineBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.v2.NormalBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachModelEditor;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarAngleToLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarCrossLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarCrossRectVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarDistanceToLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarHeaderDistanceToLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarInRectVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.DirectionVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.GearVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.HandBrakeVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.KuWeiPoseVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.SpeedVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.WheelCrossLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.WheelCrossOverLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.quxian.QuXianPositionVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.specific.CarHouLiuVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\n\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J&\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00122\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0016\u0010\u001e\u001a\u00020\n2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\f0\u001fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseFragment;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "data", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "rv", "Landroidx/recyclerview/widget/RecyclerView;", "addItem", "", "variable", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;", "getBoundary", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "getStatName", "", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "view", "removeItem", "any", "", "setData", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@SuppressLint({"NotifyDataSetChanged"})
public final class VariableFragment extends BaseFragment {
    private RecyclerView b;
    private final com.drakeet.multitype.f c = new com.drakeet.multitype.f(null, 0, null, 7, null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TeachModel f6541d;

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1"}, k = 3, mv = {1, 5, 1})
    public static final class a<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return kotlin.x.b.c(Integer.valueOf(((Variable) t2).position), Integer.valueOf(((Variable) t).position));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(VariableFragment this$0, f2.f model) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(model, "model");
        if (model.f6622a.isTraceTeach()) {
            return;
        }
        TeachModel teachModel = model.f6622a;
        this$0.f6541d = teachModel;
        List<Variable> list = teachModel.variableList;
        kotlin.jvm.internal.r.d(list, "model.tm.variableList");
        this$0.D(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(VariableFragment this$0, TeachModel teachModel) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        TeachModel teachModel2 = this$0.f6541d;
        if (teachModel2 == null) {
            return;
        }
        teachModel2.boundary = teachModel.boundary;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C(Object obj) {
        List<Variable> list;
        kotlin.jvm.internal.z.c(this.c.c()).remove(obj);
        TeachModel teachModel = this.f6541d;
        if (teachModel != null && (list = teachModel.variableList) != null) {
            kotlin.jvm.internal.z.a(list).remove(obj);
        }
        this.c.notifyDataSetChanged();
    }

    private final void D(List<Variable> list) {
        if (list.size() > 1) {
            kotlin.collections.y.A(list, new a());
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list);
        if (!TeachModelEditor.l()) {
            Iterator<Variable> it = list.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                }
                Variable next = it.next();
                if (((next instanceof KuWeiPoseVariable) || (next instanceof QuXianPositionVariable) || (next instanceof GearVariable) || (next instanceof SpeedVariable) || (next instanceof DirectionVariable) || (next instanceof CarHouLiuVariable) || (next instanceof HandBrakeVariable) || (next instanceof NormalVariable)) ? false : true) {
                    break;
                } else {
                    i++;
                }
            }
            if (i > -1) {
                arrayList.add(i, new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.a());
            }
            if (i == -1) {
                arrayList.add(new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.a());
            }
        }
        this.c.i(arrayList);
        this.c.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v() {
        List listC = kotlin.jvm.internal.z.c(this.c.c());
        kotlin.collections.z.F(listC, new Function1<Object, Boolean>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.VariableFragment$addItem$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(Object it) {
                kotlin.jvm.internal.r.e(it, "it");
                return Boolean.valueOf(it instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.e);
            }
        });
        Iterator it = listC.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (it.next() instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.a) {
                break;
            } else {
                i++;
            }
        }
        int i2 = i + 1;
        TeachModel teachModel = this.f6541d;
        Integer numValueOf = teachModel == null ? null : Integer.valueOf(teachModel.step);
        listC.add(i2, new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.e(Step.findWithType(numValueOf == null ? Step.K2_Global.type : numValueOf.intValue())));
        this.c.notifyDataSetChanged();
        RecyclerView recyclerView = this.b;
        if (recyclerView == null) {
            return;
        }
        recyclerView.scrollToPosition(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w(Variable variable) {
        List<Variable> list;
        List listC = kotlin.jvm.internal.z.c(this.c.c());
        kotlin.collections.z.F(listC, new Function1<Object, Boolean>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.VariableFragment$addItem$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(Object it) {
                kotlin.jvm.internal.r.e(it, "it");
                return Boolean.valueOf(it instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.e);
            }
        });
        Iterator it = listC.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (it.next() instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.a) {
                break;
            } else {
                i++;
            }
        }
        int i2 = i + 1;
        listC.add(i2, variable);
        TeachModel teachModel = this.f6541d;
        if (teachModel != null && (list = teachModel.variableList) != null) {
            list.add(variable);
        }
        this.c.notifyDataSetChanged();
        RecyclerView recyclerView = this.b;
        if (recyclerView == null) {
            return;
        }
        recyclerView.scrollToPosition(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final cn.mucang.android.jiakaoyi.hpmap.a.a.b x() {
        TeachModel teachModel = this.f6541d;
        if (teachModel == null) {
            return null;
        }
        Step stepFindWithType = Step.findWithType(teachModel.step);
        if (stepFindWithType == Step.K2_DaoCheRuKu) {
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar = teachModel.boundary;
            if (bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) {
                return bVar;
            }
        } else if (stepFindWithType == Step.K2_SQuXian) {
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar2 = teachModel.boundary;
            if (bVar2 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.j) {
                return bVar2;
            }
        } else if (stepFindWithType == Step.K2_ZhiJiaoZhuanWan) {
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar3 = teachModel.boundary;
            if (bVar3 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.o) {
                return bVar3;
            }
        } else if (stepFindWithType == Step.K2_ShangPoQiBu) {
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar4 = teachModel.boundary;
            if (bVar4 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.k) {
                return bVar4;
            }
        } else if (stepFindWithType == Step.K2_CeFangTingChe) {
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar5 = teachModel.boundary;
            if (bVar5 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) {
                return bVar5;
            }
        } else if (stepFindWithType == Step.K2_ShiHuaLuMian) {
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar6 = teachModel.boundary;
            if (bVar6 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.f) {
                return bVar6;
            }
        } else if (stepFindWithType == Step.K2_SuiDao) {
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar7 = teachModel.boundary;
            if (bVar7 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.l) {
                return bVar7;
            }
        } else if (stepFindWithType == Step.K2_JinJiQingKuang) {
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar8 = teachModel.boundary;
            if (bVar8 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.g) {
                return bVar8;
            }
        } else if (stepFindWithType == Step.K2_ETC) {
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar9 = teachModel.boundary;
            if (bVar9 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.e) {
                return bVar9;
            }
        } else if (stepFindWithType == Step.K2_ZhaiLuDiaoTou) {
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar10 = teachModel.boundary;
            if (bVar10 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.n) {
                return bVar10;
            }
        } else if (stepFindWithType == Step.K2_QuKa) {
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar11 = teachModel.boundary;
            if (bVar11 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.i) {
                return bVar11;
            }
        }
        cn.mucang.android.core.utils.u.h("请驶入" + ((Object) stepFindWithType.getStepName()) + "项目");
        return null;
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "触发条件页面";
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        kotlin.jvm.internal.r.e(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_collect_variable, container, false);
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        kotlin.jvm.internal.r.e(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.b = (RecyclerView) view.findViewById(R.id.list_view);
        this.c.g(NormalVariable.class, new NormalBinder());
        this.c.g(DirectionVariable.class, new DirectionBinder());
        this.c.g(HandBrakeVariable.class, new HandBrakeBinder());
        this.c.g(GearVariable.class, new GearBinder());
        this.c.g(KuWeiPoseVariable.class, new KuWeiBinder(new Function0<cn.mucang.android.jiakaoyi.hpmap.a.a.b>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.VariableFragment.onViewCreated.1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final cn.mucang.android.jiakaoyi.hpmap.a.a.b invoke() {
                return VariableFragment.this.x();
            }
        }));
        this.c.g(SpeedVariable.class, new SpeedBinder());
        this.c.g(CarHouLiuVariable.class, new HouLiuBinder());
        this.c.g(QuXianPositionVariable.class, new QuXianPositionBinder(new Function0<cn.mucang.android.jiakaoyi.hpmap.a.a.b>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.VariableFragment.onViewCreated.2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final cn.mucang.android.jiakaoyi.hpmap.a.a.b invoke() {
                return VariableFragment.this.x();
            }
        }));
        this.c.g(cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.a.class, new AddBinder(new Function1<Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.VariableFragment.onViewCreated.3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(Object obj) {
                invoke2(obj);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Object obj) {
                VariableFragment.this.v();
            }
        }));
        this.c.g(CarAngleToLineVariable.class, new CarAngleToLineBinder(new Function1<Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.VariableFragment.onViewCreated.4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(Object obj) {
                invoke2(obj);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Object it) {
                kotlin.jvm.internal.r.e(it, "it");
                VariableFragment.this.C(it);
            }
        }, new Function0<cn.mucang.android.jiakaoyi.hpmap.a.a.b>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.VariableFragment.onViewCreated.5
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final cn.mucang.android.jiakaoyi.hpmap.a.a.b invoke() {
                return VariableFragment.this.x();
            }
        }));
        this.c.g(CarCrossLineVariable.class, new CarCrossLineBinder(new Function1<Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.VariableFragment.onViewCreated.6
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(Object obj) {
                invoke2(obj);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Object it) {
                kotlin.jvm.internal.r.e(it, "it");
                VariableFragment.this.C(it);
            }
        }));
        this.c.g(CarCrossRectVariable.class, new CarCrossRectBinder(new Function1<Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.VariableFragment.onViewCreated.7
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(Object obj) {
                invoke2(obj);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Object it) {
                kotlin.jvm.internal.r.e(it, "it");
                VariableFragment.this.C(it);
            }
        }));
        this.c.g(CarDistanceToLineVariable.class, new CarDistanceToLineBinder(new Function1<Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.VariableFragment.onViewCreated.8
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(Object obj) {
                invoke2(obj);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Object it) {
                kotlin.jvm.internal.r.e(it, "it");
                VariableFragment.this.C(it);
            }
        }, new Function0<cn.mucang.android.jiakaoyi.hpmap.a.a.b>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.VariableFragment.onViewCreated.9
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final cn.mucang.android.jiakaoyi.hpmap.a.a.b invoke() {
                return VariableFragment.this.x();
            }
        }));
        this.c.g(CarHeaderDistanceToLineVariable.class, new CarHeaderDistanceToLineBinder(new Function1<Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.VariableFragment.onViewCreated.10
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(Object obj) {
                invoke2(obj);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Object it) {
                kotlin.jvm.internal.r.e(it, "it");
                VariableFragment.this.C(it);
            }
        }, new Function0<cn.mucang.android.jiakaoyi.hpmap.a.a.b>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.VariableFragment.onViewCreated.11
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final cn.mucang.android.jiakaoyi.hpmap.a.a.b invoke() {
                return VariableFragment.this.x();
            }
        }));
        this.c.g(CarInRectVariable.class, new CarInRectBinder(new Function1<Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.VariableFragment.onViewCreated.12
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(Object obj) {
                invoke2(obj);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Object it) {
                kotlin.jvm.internal.r.e(it, "it");
                VariableFragment.this.C(it);
            }
        }));
        this.c.g(WheelCrossLineVariable.class, new WheelCrossLineBinder(new Function1<Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.VariableFragment.onViewCreated.13
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(Object obj) {
                invoke2(obj);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Object it) {
                kotlin.jvm.internal.r.e(it, "it");
                VariableFragment.this.C(it);
            }
        }));
        this.c.g(WheelCrossOverLineVariable.class, new WheelCrossOverLineBinder(new Function1<Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.VariableFragment.onViewCreated.14
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(Object obj) {
                invoke2(obj);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Object it) {
                kotlin.jvm.internal.r.e(it, "it");
                VariableFragment.this.C(it);
            }
        }));
        this.c.g(QuXianPositionVariable.class, new QuXianPositionBinder(new Function0<cn.mucang.android.jiakaoyi.hpmap.a.a.b>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.VariableFragment.onViewCreated.15
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final cn.mucang.android.jiakaoyi.hpmap.a.a.b invoke() {
                return VariableFragment.this.x();
            }
        }));
        this.c.g(cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.e.class, new SelectBinder(new Function2<Variable, Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.VariableFragment.onViewCreated.16
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ kotlin.v invoke(Variable variable, Object obj) {
                invoke2(variable, obj);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Variable it, Object obj) {
                kotlin.jvm.internal.r.e(it, "it");
                VariableFragment.this.w(it);
            }
        }, new Function1<Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.VariableFragment.onViewCreated.17
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(Object obj) {
                invoke2(obj);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Object it) {
                kotlin.jvm.internal.r.e(it, "it");
                VariableFragment.this.C(it);
            }
        }, new Function0<cn.mucang.android.jiakaoyi.hpmap.a.a.b>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.VariableFragment.onViewCreated.18
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final cn.mucang.android.jiakaoyi.hpmap.a.a.b invoke() {
                return VariableFragment.this.x();
            }
        }));
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        }
        RecyclerView recyclerView2 = this.b;
        if (recyclerView2 != null) {
            recyclerView2.setAdapter(this.c);
        }
        BusLiveData busLiveDataD = LiveBus.d(f2.f.class);
        androidx.lifecycle.r viewLifecycleOwner = getViewLifecycleOwner();
        kotlin.jvm.internal.r.d(viewLifecycleOwner, "viewLifecycleOwner");
        busLiveDataD.h(viewLifecycleOwner, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.x1
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                VariableFragment.A(this.f6727a, (f2.f) obj);
            }
        });
        BusLiveData busLiveDataD2 = LiveBus.d(TeachModel.class);
        androidx.lifecycle.r viewLifecycleOwner2 = getViewLifecycleOwner();
        kotlin.jvm.internal.r.d(viewLifecycleOwner2, "viewLifecycleOwner");
        busLiveDataD2.h(viewLifecycleOwner2, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.w1
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                VariableFragment.B(this.f6723a, (TeachModel) obj);
            }
        });
    }
}
