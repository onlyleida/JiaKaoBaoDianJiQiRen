package cn.mucang.android.jiakaoyi.teachingk2.collect.render;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.BusLiveData;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseFragment;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.DelayDistanceBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.DelayTimeBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.ErrorItemBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.FootBrakeBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.LightBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.RepeatBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.SelectLineBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.TurnHeadBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.error.WheelDegreeBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.AddBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.CarAngleToLineBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.CarCrossLineBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.CarCrossRectBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.CarDistanceToLineBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.CarHeaderDistanceToLineBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.CarInRectBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.SelectBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.WheelCrossLineBinder;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.p005variable.binder.WheelCrossOverLineBinder;
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
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\b\u0010\u0012\u001a\u00020\u000eH\u0002J\u0012\u0010\u0013\u001a\u00020\u000e2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J8\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u0011H\u0002J\u001a\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020 2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J\b\u0010!\u001a\u00020\"H\u0002J,\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110$2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00150%2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J\n\u0010&\u001a\u0004\u0018\u00010'H\u0002J\b\u0010(\u001a\u00020\u000bH\u0016J$\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010.2\b\u0010/\u001a\u0004\u0018\u000100H\u0016J\u001a\u00101\u001a\u00020\u000e2\u0006\u00102\u001a\u00020*2\b\u0010/\u001a\u0004\u0018\u000100H\u0016J\u0014\u00103\u001a\u00020\u000e2\n\b\u0002\u00104\u001a\u0004\u0018\u000105H\u0002J\u0010\u00106\u001a\u00020\u000e2\u0006\u00107\u001a\u00020\u0015H\u0002J\u0012\u00108\u001a\u00020\u000e2\b\u00104\u001a\u0004\u0018\u00010\bH\u0002J\u0010\u00109\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u000205H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\f¨\u0006:"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/ErrorFragment;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseFragment;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "binding", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsBinding;", "data", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "types", "", "", "[Ljava/lang/String;", "addErrors", "", "list", "", "", "addOneError", "addSelect", "error", "", "addStop", "startIndex", "endIndex", "voice", "min", "", "max", "type", "addVariable", "variable", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;", "canShowStop", "", "findOneModelIndex", "Lkotlin/Pair;", "", "getBoundary", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "getStatName", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "view", "refreshList", "model", "Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;", "removeItem", "any", "setData", "setDelay", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ErrorFragment extends BaseFragment {
    private final com.drakeet.multitype.f b = new com.drakeet.multitype.f(null, 0, null, 7, null);
    private TeachModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private FragmentCollectErrorsBinding f6539d;

    private final void A(int i, int i2, String str, float f2, float f3, int i3) {
        List<ErrorModel> list;
        TeachModel teachModel = this.c;
        if (teachModel == null || (list = teachModel.errors) == null) {
            return;
        }
        ErrorModel errorModelCreate = ErrorModel.create(i3);
        kotlin.jvm.internal.r.d(errorModelCreate, "this");
        P(errorModelCreate);
        FormModel formModel = errorModelCreate.errorForm;
        VoiceModel voiceModel = formModel instanceof VoiceModel ? (VoiceModel) formModel : null;
        if (voiceModel != null) {
            voiceModel.voice = str;
        }
        if (f2 > BitmapDescriptorFactory.HUE_RED) {
            errorModelCreate.errorVariables.add(new CarDistanceToLineVariable(i, i2, f2, Relation.BigThan));
        }
        if (f3 > BitmapDescriptorFactory.HUE_RED) {
            errorModelCreate.errorVariables.add(new CarDistanceToLineVariable(i, i2, f3, Relation.SmallThan));
        }
        kotlin.v vVar = kotlin.v.f15822a;
        list.add(0, errorModelCreate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B(Variable variable, Object obj) {
        List<Variable> list;
        boolean z = obj instanceof ErrorModel;
        ErrorModel errorModel = z ? (ErrorModel) obj : null;
        if (errorModel != null) {
            errorModel.hasSelect = false;
        }
        List<Object> listC = kotlin.jvm.internal.z.c(this.b.c());
        Pair<Integer, Integer> pairD = D(listC, obj);
        int iIntValue = pairD.component1().intValue();
        int iIntValue2 = pairD.component2().intValue();
        if (iIntValue > iIntValue2) {
            return;
        }
        while (true) {
            int i = iIntValue2 - 1;
            if (listC.get(iIntValue2) instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.a) {
                int i2 = iIntValue2 + 1;
                if (kotlin.collections.s.f0(listC, i2) instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.e) {
                    listC.set(i2, variable);
                } else {
                    listC.add(i2, variable);
                }
                ErrorModel errorModel2 = z ? (ErrorModel) obj : null;
                if (errorModel2 != null && (list = errorModel2.errorVariables) != null) {
                    list.add(variable);
                }
                this.b.notifyDataSetChanged();
                FragmentCollectErrorsBinding fragmentCollectErrorsBinding = this.f6539d;
                if (fragmentCollectErrorsBinding != null) {
                    fragmentCollectErrorsBinding.errorRv.scrollToPosition(i2);
                    return;
                } else {
                    kotlin.jvm.internal.r.u("binding");
                    throw null;
                }
            }
            if (iIntValue2 == iIntValue) {
                return;
            } else {
                iIntValue2 = i;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0034, code lost:
    
        if ((r0 != null && r0.subStep == 4) != false) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean C() {
        /*
            r6 = this;
            cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel r0 = r6.c
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L8
        L6:
            r3 = 0
            goto L11
        L8:
            int r3 = r0.step
            cn.mucang.android.jiakaoyi.engine.model.Step r4 = cn.mucang.android.jiakaoyi.engine.model.Step.K2_DaoCheRuKu
            int r4 = r4.type
            if (r3 != r4) goto L6
            r3 = 1
        L11:
            r4 = 2
            if (r3 == 0) goto L37
            if (r0 != 0) goto L18
        L16:
            r3 = 0
            goto L1d
        L18:
            int r3 = r0.subStep
            if (r3 != r1) goto L16
            r3 = 1
        L1d:
            if (r3 != 0) goto L36
            if (r0 != 0) goto L23
        L21:
            r3 = 0
            goto L28
        L23:
            int r3 = r0.subStep
            if (r3 != r4) goto L21
            r3 = 1
        L28:
            if (r3 != 0) goto L36
            if (r0 != 0) goto L2e
        L2c:
            r3 = 0
            goto L34
        L2e:
            int r3 = r0.subStep
            r5 = 4
            if (r3 != r5) goto L2c
            r3 = 1
        L34:
            if (r3 == 0) goto L37
        L36:
            return r1
        L37:
            if (r0 != 0) goto L3b
        L39:
            r3 = 0
            goto L44
        L3b:
            int r3 = r0.step
            cn.mucang.android.jiakaoyi.engine.model.Step r5 = cn.mucang.android.jiakaoyi.engine.model.Step.K2_CeFangTingChe
            int r5 = r5.type
            if (r3 != r5) goto L39
            r3 = 1
        L44:
            if (r3 == 0) goto L5d
            if (r0 != 0) goto L4a
        L48:
            r3 = 0
            goto L4f
        L4a:
            int r3 = r0.subStep
            if (r3 != r1) goto L48
            r3 = 1
        L4f:
            if (r3 != 0) goto L5c
            if (r0 != 0) goto L55
        L53:
            r0 = 0
            goto L5a
        L55:
            int r0 = r0.subStep
            if (r0 != r4) goto L53
            r0 = 1
        L5a:
            if (r0 == 0) goto L5d
        L5c:
            return r1
        L5d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.teachingk2.collect.render.ErrorFragment.C():boolean");
    }

    private final Pair<Integer, Integer> D(List<Object> list, Object obj) {
        int size = list.size();
        int i = Integer.MIN_VALUE;
        int i2 = Integer.MAX_VALUE;
        if (size > 0) {
            int i3 = 0;
            int i4 = Integer.MIN_VALUE;
            while (true) {
                int i5 = i3 + 1;
                Object obj2 = list.get(i3);
                if (i4 != Integer.MIN_VALUE || !kotlin.jvm.internal.r.a(obj2, obj)) {
                    if (i4 != Integer.MIN_VALUE && (obj2 instanceof ErrorModel)) {
                        i2 = i3;
                        break;
                    }
                } else {
                    i4 = i3;
                }
                if (i5 >= size) {
                    break;
                }
                i3 = i5;
            }
            i = i4;
        }
        return new Pair<>(Integer.valueOf(i), Integer.valueOf(kotlin.ranges.f.e(i2, kotlin.collections.u.l(list))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final cn.mucang.android.jiakaoyi.hpmap.a.a.b E() {
        TeachModel teachModel = this.c;
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
        cn.mucang.android.core.utils.u.h("请驶入" + ((Object) stepFindWithType.zhStepName) + "项目");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(ErrorFragment this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(ErrorFragment this$0, f2.f data) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(data, "data");
        this$0.O(data.f6622a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(ErrorFragment this$0, TeachModel teachModel) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        TeachModel teachModel2 = this$0.c;
        if (teachModel2 == null) {
            return;
        }
        teachModel2.boundary = teachModel.boundary;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L(ErrorModel errorModel) {
        List<ErrorModel> list;
        List<ErrorModel> list2;
        TeachModel teachModel = this.c;
        if (teachModel != null && (list2 = teachModel.errors) != null) {
            list2.remove(errorModel);
        }
        ArrayList arrayList = new ArrayList();
        TeachModel teachModel2 = this.c;
        if (teachModel2 != null && (list = teachModel2.errors) != null) {
            for (ErrorModel it : list) {
                kotlin.jvm.internal.r.d(it, "it");
                TeachModel teachModel3 = this.c;
                Step stepFindWithType = Step.findWithType(teachModel3 == null ? 0 : teachModel3.step);
                kotlin.jvm.internal.r.d(stepFindWithType, "findWithType(data?.step ?: 0)");
                cn.mucang.android.jiakaoyi.teachingk2.p0.b(it, arrayList, stepFindWithType);
            }
        }
        this.b.i(arrayList);
        this.b.notifyDataSetChanged();
    }

    static /* synthetic */ void M(ErrorFragment errorFragment, ErrorModel errorModel, int i, Object obj) {
        if ((i & 1) != 0) {
            errorModel = null;
        }
        errorFragment.L(errorModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N(Object obj) {
        List<ErrorModel> list;
        TeachModel teachModel = this.c;
        if (teachModel != null && (list = teachModel.errors) != null) {
            for (ErrorModel errorModel : list) {
                List<Variable> list2 = errorModel.stopVariables;
                if (list2 != null && CollectionsKt___CollectionsKt.S(list2, obj)) {
                    List<Variable> list3 = errorModel.stopVariables;
                    kotlin.jvm.internal.r.d(list3, "it.stopVariables");
                    kotlin.jvm.internal.z.a(list3).remove(obj);
                }
                List<Variable> list4 = errorModel.errorVariables;
                if (list4 != null && CollectionsKt___CollectionsKt.S(list4, obj)) {
                    List<Variable> list5 = errorModel.errorVariables;
                    kotlin.jvm.internal.r.d(list5, "it.errorVariables");
                    kotlin.jvm.internal.z.a(list5).remove(obj);
                }
                if ((obj instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.e) && kotlin.jvm.internal.r.a(((cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.e) obj).b, errorModel)) {
                    errorModel.hasSelect = false;
                }
            }
        }
        kotlin.jvm.internal.z.c(this.b.c()).remove(obj);
        this.b.notifyDataSetChanged();
    }

    private final void O(TeachModel teachModel) {
        List<ErrorModel> list;
        this.c = teachModel;
        ErrorModel errorModel = (teachModel == null || (list = teachModel.errors) == null) ? null : (ErrorModel) kotlin.collections.s.e0(list);
        if (errorModel != null) {
            errorModel.expand = true;
        }
        M(this, null, 1, null);
    }

    private final void P(ErrorModel errorModel) {
        List<Variable> list = errorModel.stopVariables;
        kotlin.jvm.internal.r.d(list, "error.stopVariables");
        for (Variable variable : list) {
            if (variable instanceof DelayTimeVariable) {
                ((DelayTimeVariable) variable).delayTime = 3000L;
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x(List<Integer> list) {
        int i;
        TeachModel teachModel;
        List<ErrorModel> list2;
        int i2;
        TeachModel teachModel2;
        List<ErrorModel> list3;
        TeachModel teachModel3;
        List<ErrorModel> list4;
        TeachModel teachModel4;
        List<ErrorModel> list5;
        TeachModel teachModel5;
        List<ErrorModel> list6;
        TeachModel teachModel6;
        List<ErrorModel> list7;
        TeachModel teachModel7;
        List<ErrorModel> list8;
        TeachModel teachModel8;
        List<ErrorModel> list9;
        int i3;
        int i4;
        TeachModel teachModel9 = this.c;
        String str = "this";
        if (teachModel9 != null && teachModel9.step == Step.K2_DaoCheRuKu.type) {
            if (teachModel9 != null && teachModel9.subStep == 1) {
                if (list.contains(1)) {
                    i4 = 2;
                    A(1, 8, "停车位置偏左", 190.0f, 225.0f, 1);
                } else {
                    i4 = 2;
                }
                if (list.contains(Integer.valueOf(i4))) {
                    A(1, 8, "停车位置偏右", 245.0f, 370.0f, 2);
                }
                if (list.contains(3)) {
                    A(1, 8, "停车位置不合适，请开到起点重新练习", BitmapDescriptorFactory.HUE_RED, 190.0f, 3);
                }
                if (list.contains(4)) {
                    A(1, 8, "停车位置不合适，请开到起点重新练习", 370.0f, BitmapDescriptorFactory.HUE_RED, 4);
                }
            } else {
                str = "this";
                boolean z = teachModel9 != null && teachModel9.subStep == 2;
                if (!z) {
                    if (teachModel9 != null && teachModel9.subStep == 4) {
                    }
                }
                if (list.contains(1)) {
                    i3 = 2;
                    A(3, 4, "停车位置偏左", 85.0f, 107.0f, 1);
                } else {
                    i3 = 2;
                }
                if (list.contains(Integer.valueOf(i3))) {
                    A(5, 6, "停车位置偏右", 85.0f, 107.0f, 2);
                }
                if (list.contains(3)) {
                    A(3, 4, "停车位置不合适，请开到起点重新练习", BitmapDescriptorFactory.HUE_RED, 85.0f, 3);
                }
                if (list.contains(4)) {
                    A(5, 6, "停车位置不合适，请开到起点重新练习", BitmapDescriptorFactory.HUE_RED, 85.0f, 4);
                }
            }
        } else {
            str = "this";
            if (teachModel9 != null && teachModel9.step == Step.K2_CeFangTingChe.type) {
                if (teachModel9 != null && teachModel9.subStep == 1) {
                    if (list.contains(1) && (teachModel = this.c) != null && (list2 = teachModel.errors) != null) {
                        ErrorModel errorModelCreate = ErrorModel.create(1);
                        kotlin.jvm.internal.r.d(errorModelCreate, str);
                        P(errorModelCreate);
                        FormModel formModel = errorModelCreate.errorForm;
                        VoiceModel voiceModel = formModel instanceof VoiceModel ? (VoiceModel) formModel : null;
                        if (voiceModel != null) {
                            voiceModel.voice = "停车位置偏左";
                        }
                        List<Variable> list10 = errorModelCreate.errorVariables;
                        Relation relation = Relation.BigThan;
                        list10.add(new CarDistanceToLineVariable(1, 8, 165.0f, relation));
                        errorModelCreate.errorVariables.add(new CarDistanceToLineVariable(6, 7, 125.0f, relation));
                        kotlin.v vVar = kotlin.v.f15822a;
                        list2.add(0, errorModelCreate);
                    }
                    if (list.contains(2)) {
                        A(6, 7, "停车位置偏右", 95.0f, 105.0f, 2);
                    }
                    if (list.contains(3)) {
                        A(1, 8, "停车位置不合适，请开到起点重新练习", BitmapDescriptorFactory.HUE_RED, 165.0f, 3);
                    }
                    if (list.contains(4)) {
                        A(6, 7, "停车位置不合适，请开到起点重新练习", BitmapDescriptorFactory.HUE_RED, 95.0f, 4);
                    }
                } else {
                    boolean z2 = teachModel9 != null && teachModel9.subStep == 2;
                    if (z2) {
                        if (list.contains(1)) {
                            i = 2;
                            A(3, 6, "停车位置偏左", 85.0f, 107.0f, 1);
                        } else {
                            i = 2;
                        }
                        if (list.contains(Integer.valueOf(i))) {
                            A(4, 5, "停车位置偏右", 85.0f, 107.0f, 2);
                        }
                        if (list.contains(3)) {
                            A(3, 6, "停车位置不合适，请开到起点重新练习", BitmapDescriptorFactory.HUE_RED, 85.0f, 3);
                        }
                        if (list.contains(4)) {
                            A(4, 5, "停车位置不合适，请开到起点重新练习", BitmapDescriptorFactory.HUE_RED, 85.0f, 4);
                        }
                    }
                }
            }
        }
        int i5 = -1;
        if (list.contains(5) && (teachModel8 = this.c) != null && (list9 = teachModel8.errors) != null) {
            ErrorModel errorModelCreate2 = ErrorModel.create(5);
            kotlin.jvm.internal.r.d(errorModelCreate2, str);
            P(errorModelCreate2);
            FormModel formModel2 = errorModelCreate2.errorForm;
            VoiceModel voiceModel2 = formModel2 instanceof VoiceModel ? (VoiceModel) formModel2 : null;
            if (voiceModel2 != null) {
                voiceModel2.voice = "未开转向灯";
            }
            List<Variable> errorVariables = errorModelCreate2.errorVariables;
            kotlin.jvm.internal.r.d(errorVariables, "errorVariables");
            Iterator<Variable> it = errorVariables.iterator();
            int i6 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i6 = -1;
                    break;
                } else if (it.next() instanceof LightVariable) {
                    break;
                } else {
                    i6++;
                }
            }
            errorModelCreate2.errorVariables.set(i6, new LightVariable(Light.Off.lightId));
            kotlin.v vVar2 = kotlin.v.f15822a;
            list9.add(0, errorModelCreate2);
        }
        if (list.contains(6) && (teachModel7 = this.c) != null && (list8 = teachModel7.errors) != null) {
            ErrorModel errorModelCreate3 = ErrorModel.create(6);
            kotlin.jvm.internal.r.d(errorModelCreate3, str);
            P(errorModelCreate3);
            FormModel formModel3 = errorModelCreate3.errorForm;
            VoiceModel voiceModel3 = formModel3 instanceof VoiceModel ? (VoiceModel) formModel3 : null;
            if (voiceModel3 != null) {
                voiceModel3.voice = "转向灯错误";
            }
            List<Variable> errorVariables2 = errorModelCreate3.errorVariables;
            kotlin.jvm.internal.r.d(errorVariables2, "errorVariables");
            Iterator<Variable> it2 = errorVariables2.iterator();
            int i7 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i7 = -1;
                    break;
                } else if (it2.next() instanceof LightVariable) {
                    break;
                } else {
                    i7++;
                }
            }
            errorModelCreate3.errorVariables.set(i7, new LightVariable(Light.TurnRightLight.lightId));
            kotlin.v vVar3 = kotlin.v.f15822a;
            list8.add(0, errorModelCreate3);
        }
        if (list.contains(7) && (teachModel6 = this.c) != null && (list7 = teachModel6.errors) != null) {
            ErrorModel errorModelCreate4 = ErrorModel.create(7);
            kotlin.jvm.internal.r.d(errorModelCreate4, str);
            P(errorModelCreate4);
            FormModel formModel4 = errorModelCreate4.errorForm;
            VoiceModel voiceModel4 = formModel4 instanceof VoiceModel ? (VoiceModel) formModel4 : null;
            if (voiceModel4 != null) {
                voiceModel4.voice = "未及时刹车";
            }
            List<Variable> errorVariables3 = errorModelCreate4.errorVariables;
            kotlin.jvm.internal.r.d(errorVariables3, "errorVariables");
            Iterator<Variable> it3 = errorVariables3.iterator();
            int i8 = 0;
            while (true) {
                if (!it3.hasNext()) {
                    i8 = -1;
                    break;
                } else if (it3.next() instanceof FootBrakeVariable) {
                    break;
                } else {
                    i8++;
                }
            }
            errorModelCreate4.errorVariables.set(i8, new FootBrakeVariable(true));
            kotlin.v vVar4 = kotlin.v.f15822a;
            list7.add(0, errorModelCreate4);
        }
        if (list.contains(8) && (teachModel5 = this.c) != null && (list6 = teachModel5.errors) != null) {
            ErrorModel errorModelCreate5 = ErrorModel.create(8);
            kotlin.jvm.internal.r.d(errorModelCreate5, str);
            P(errorModelCreate5);
            errorModelCreate5.checkType = 1;
            errorModelCreate5.isRightCheck = true;
            FormModel formModel5 = errorModelCreate5.errorForm;
            VoiceModel voiceModel5 = formModel5 instanceof VoiceModel ? (VoiceModel) formModel5 : null;
            if (voiceModel5 != null) {
                voiceModel5.voice = "请按教学往前看";
            }
            List<Variable> errorVariables4 = errorModelCreate5.errorVariables;
            kotlin.jvm.internal.r.d(errorVariables4, "errorVariables");
            Iterator<Variable> it4 = errorVariables4.iterator();
            int i9 = 0;
            while (true) {
                if (!it4.hasNext()) {
                    i9 = -1;
                    break;
                } else if (it4.next() instanceof TurnHeadVariable) {
                    break;
                } else {
                    i9++;
                }
            }
            errorModelCreate5.errorVariables.set(i9, new TurnHeadVariable(0));
            kotlin.v vVar5 = kotlin.v.f15822a;
            list6.add(0, errorModelCreate5);
        }
        if (list.contains(9) && (teachModel4 = this.c) != null && (list5 = teachModel4.errors) != null) {
            ErrorModel errorModelCreate6 = ErrorModel.create(9);
            kotlin.jvm.internal.r.d(errorModelCreate6, str);
            P(errorModelCreate6);
            errorModelCreate6.checkType = 1;
            errorModelCreate6.isRightCheck = true;
            FormModel formModel6 = errorModelCreate6.errorForm;
            VoiceModel voiceModel6 = formModel6 instanceof VoiceModel ? (VoiceModel) formModel6 : null;
            if (voiceModel6 != null) {
                voiceModel6.voice = "请按教学指示看左后视镜点位";
            }
            List<Variable> errorVariables5 = errorModelCreate6.errorVariables;
            kotlin.jvm.internal.r.d(errorVariables5, "errorVariables");
            Iterator<Variable> it5 = errorVariables5.iterator();
            int i10 = 0;
            while (true) {
                if (!it5.hasNext()) {
                    i10 = -1;
                    break;
                } else if (it5.next() instanceof TurnHeadVariable) {
                    break;
                } else {
                    i10++;
                }
            }
            errorModelCreate6.errorVariables.set(i10, new TurnHeadVariable(1));
            kotlin.v vVar6 = kotlin.v.f15822a;
            list5.add(0, errorModelCreate6);
        }
        if (!list.contains(10) || (teachModel3 = this.c) == null || (list4 = teachModel3.errors) == null) {
            i2 = 0;
        } else {
            ErrorModel errorModelCreate7 = ErrorModel.create(9);
            kotlin.jvm.internal.r.d(errorModelCreate7, str);
            P(errorModelCreate7);
            errorModelCreate7.checkType = 1;
            errorModelCreate7.isRightCheck = true;
            FormModel formModel7 = errorModelCreate7.errorForm;
            VoiceModel voiceModel7 = formModel7 instanceof VoiceModel ? (VoiceModel) formModel7 : null;
            if (voiceModel7 != null) {
                voiceModel7.voice = "请按教学指示看右后视镜点位";
            }
            List<Variable> errorVariables6 = errorModelCreate7.errorVariables;
            kotlin.jvm.internal.r.d(errorVariables6, "errorVariables");
            Iterator<Variable> it6 = errorVariables6.iterator();
            int i11 = 0;
            while (it6.hasNext()) {
                if (it6.next() instanceof TurnHeadVariable) {
                    i5 = i11;
                    break;
                }
                i11++;
            }
            errorModelCreate7.errorVariables.set(i5, new TurnHeadVariable(2));
            kotlin.v vVar7 = kotlin.v.f15822a;
            i2 = 0;
            list4.add(0, errorModelCreate7);
        }
        if (list.contains(Integer.valueOf(i2)) && (teachModel2 = this.c) != null && (list3 = teachModel2.errors) != null) {
            list3.add(i2, ErrorModel.create(i2));
            kotlin.v vVar8 = kotlin.v.f15822a;
        }
        M(this, null, 1, null);
        cn.mucang.android.jiakaoyi.teachingk2.p0.a();
    }

    private final void y() {
        TeachModel teachModel = this.c;
        if ((teachModel == null ? null : teachModel.errors) == null && teachModel != null) {
            teachModel.errors = new ArrayList();
        }
        androidx.fragment.app.d activity = getActivity();
        kotlin.jvm.internal.r.c(activity);
        kotlin.jvm.internal.r.d(activity, "activity!!");
        new SelectErrorDialog(activity, C(), new Function1<List<? extends Integer>, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.ErrorFragment$addOneError$1
            {
                super(1);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<Integer> list) {
                kotlin.jvm.internal.r.e(list, "list");
                this.this$0.x(list);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(List<? extends Integer> list) {
                invoke2((List<Integer>) list);
                return kotlin.v.f15822a;
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z(Object obj) {
        ErrorModel errorModel = obj instanceof ErrorModel ? (ErrorModel) obj : null;
        if (errorModel != null) {
            errorModel.hasSelect = true;
        }
        List<Object> listC = kotlin.jvm.internal.z.c(this.b.c());
        Pair<Integer, Integer> pairD = D(listC, obj);
        int iIntValue = pairD.component1().intValue();
        int iIntValue2 = pairD.component2().intValue();
        if (iIntValue > iIntValue2) {
            return;
        }
        while (true) {
            int i = iIntValue2 - 1;
            if (listC.get(iIntValue2) instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.a) {
                int i2 = iIntValue2 + 1;
                if (kotlin.collections.s.f0(listC, i2) instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.e) {
                    return;
                }
                TeachModel teachModel = this.c;
                cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.e eVar = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.e(Step.findWithType(teachModel == null ? 0 : teachModel.step));
                eVar.b = obj;
                listC.add(i2, eVar);
                this.b.notifyDataSetChanged();
                FragmentCollectErrorsBinding fragmentCollectErrorsBinding = this.f6539d;
                if (fragmentCollectErrorsBinding == null) {
                    kotlin.jvm.internal.r.u("binding");
                    throw null;
                }
                fragmentCollectErrorsBinding.errorRv.scrollToPosition(i2);
            }
            if (iIntValue2 == iIntValue) {
                return;
            } else {
                iIntValue2 = i;
            }
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "错误检测页面";
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        kotlin.jvm.internal.r.e(inflater, "inflater");
        FragmentCollectErrorsBinding fragmentCollectErrorsBindingInflate = FragmentCollectErrorsBinding.inflate(inflater);
        kotlin.jvm.internal.r.d(fragmentCollectErrorsBindingInflate, "inflate(inflater)");
        this.f6539d = fragmentCollectErrorsBindingInflate;
        if (fragmentCollectErrorsBindingInflate == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        fragmentCollectErrorsBindingInflate.errorRv.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        FragmentCollectErrorsBinding fragmentCollectErrorsBinding = this.f6539d;
        if (fragmentCollectErrorsBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        fragmentCollectErrorsBinding.addIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.i0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ErrorFragment.I(this.f6653a, view);
            }
        });
        this.b.g(ErrorModel.class, new ErrorItemBinder(new Function1<ErrorModel, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.ErrorFragment.onCreateView.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(ErrorModel errorModel) {
                invoke2(errorModel);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ErrorModel errorModel) {
                ErrorFragment.this.L(errorModel);
                if (errorModel != null) {
                    cn.mucang.android.jiakaoyi.teachingk2.p0.a();
                }
            }
        }));
        this.b.g(cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.d.class, new SelectLineBinder(new Function0<cn.mucang.android.jiakaoyi.hpmap.a.a.b>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.ErrorFragment.onCreateView.3
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final cn.mucang.android.jiakaoyi.hpmap.a.a.b invoke() {
                return ErrorFragment.this.E();
            }
        }));
        this.b.g(RepeatVariable.class, new RepeatBinder());
        this.b.g(DelayTimeVariable.class, new DelayTimeBinder());
        this.b.g(DelayDistanceVariable.class, new DelayDistanceBinder());
        this.b.g(WheelDegreeVariable.class, new WheelDegreeBinder());
        this.b.g(LightVariable.class, new LightBinder());
        this.b.g(FootBrakeVariable.class, new FootBrakeBinder());
        this.b.g(TurnHeadVariable.class, new TurnHeadBinder());
        this.b.g(cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.a.class, new AddBinder(new Function1<Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.ErrorFragment.onCreateView.4
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
                ErrorFragment.this.z(obj);
            }
        }));
        this.b.g(CarAngleToLineVariable.class, new CarAngleToLineBinder(new Function1<Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.ErrorFragment.onCreateView.5
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
                ErrorFragment.this.N(it);
            }
        }, new Function0<cn.mucang.android.jiakaoyi.hpmap.a.a.b>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.ErrorFragment.onCreateView.6
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final cn.mucang.android.jiakaoyi.hpmap.a.a.b invoke() {
                return ErrorFragment.this.E();
            }
        }));
        this.b.g(CarCrossLineVariable.class, new CarCrossLineBinder(new Function1<Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.ErrorFragment.onCreateView.7
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
                ErrorFragment.this.N(it);
            }
        }));
        this.b.g(CarCrossRectVariable.class, new CarCrossRectBinder(new Function1<Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.ErrorFragment.onCreateView.8
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
                ErrorFragment.this.N(it);
            }
        }));
        this.b.g(CarDistanceToLineVariable.class, new CarDistanceToLineBinder(new Function1<Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.ErrorFragment.onCreateView.9
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
                ErrorFragment.this.N(it);
            }
        }, new Function0<cn.mucang.android.jiakaoyi.hpmap.a.a.b>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.ErrorFragment.onCreateView.10
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final cn.mucang.android.jiakaoyi.hpmap.a.a.b invoke() {
                return ErrorFragment.this.E();
            }
        }));
        this.b.g(CarHeaderDistanceToLineVariable.class, new CarHeaderDistanceToLineBinder(new Function1<Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.ErrorFragment.onCreateView.11
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
                ErrorFragment.this.N(it);
            }
        }, new Function0<cn.mucang.android.jiakaoyi.hpmap.a.a.b>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.ErrorFragment.onCreateView.12
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final cn.mucang.android.jiakaoyi.hpmap.a.a.b invoke() {
                return ErrorFragment.this.E();
            }
        }));
        this.b.g(CarInRectVariable.class, new CarInRectBinder(new Function1<Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.ErrorFragment.onCreateView.13
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
                ErrorFragment.this.N(it);
            }
        }));
        this.b.g(WheelCrossLineVariable.class, new WheelCrossLineBinder(new Function1<Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.ErrorFragment.onCreateView.14
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
                ErrorFragment.this.N(it);
            }
        }));
        this.b.g(WheelCrossOverLineVariable.class, new WheelCrossOverLineBinder(new Function1<Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.ErrorFragment.onCreateView.15
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
                ErrorFragment.this.N(it);
            }
        }));
        this.b.g(cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.e.class, new SelectBinder(new Function2<Variable, Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.ErrorFragment.onCreateView.16
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
                ErrorFragment.this.B(it, obj);
            }
        }, new Function1<Object, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.ErrorFragment.onCreateView.17
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
                ErrorFragment.this.N(it);
            }
        }, new Function0<cn.mucang.android.jiakaoyi.hpmap.a.a.b>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.ErrorFragment.onCreateView.18
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final cn.mucang.android.jiakaoyi.hpmap.a.a.b invoke() {
                return ErrorFragment.this.E();
            }
        }));
        FragmentCollectErrorsBinding fragmentCollectErrorsBinding2 = this.f6539d;
        if (fragmentCollectErrorsBinding2 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        fragmentCollectErrorsBinding2.errorRv.setAdapter(this.b);
        FragmentCollectErrorsBinding fragmentCollectErrorsBinding3 = this.f6539d;
        if (fragmentCollectErrorsBinding3 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        ConstraintLayout root = fragmentCollectErrorsBinding3.getRoot();
        kotlin.jvm.internal.r.d(root, "binding.root");
        return root;
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        kotlin.jvm.internal.r.e(view, "view");
        super.onViewCreated(view, savedInstanceState);
        BusLiveData busLiveDataD = LiveBus.d(f2.f.class);
        androidx.lifecycle.r viewLifecycleOwner = getViewLifecycleOwner();
        kotlin.jvm.internal.r.d(viewLifecycleOwner, "viewLifecycleOwner");
        busLiveDataD.h(viewLifecycleOwner, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.g0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                ErrorFragment.J(this.f6645a, (f2.f) obj);
            }
        });
        BusLiveData busLiveDataD2 = LiveBus.d(TeachModel.class);
        androidx.lifecycle.r viewLifecycleOwner2 = getViewLifecycleOwner();
        kotlin.jvm.internal.r.d(viewLifecycleOwner2, "viewLifecycleOwner");
        busLiveDataD2.h(viewLifecycleOwner2, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.h0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                ErrorFragment.K(this.f6650a, (TeachModel) obj);
            }
        });
    }
}
